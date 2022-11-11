#!/usr/bin/env bash

source test/init
source lib/bashplus.bash --func

hello() ( echo Hello )
goodbye() ( echo Goodbye )
wrapper() ( echo 1; ::FUNC-CALL::; echo 2 )

+func:wrap wrapper hello goodbye

is "$(hello; goodbye)" "\
1
Hello
2
1
Goodbye
2" \
  "+wrap works"


f1() { pass "Test in function ${FUNCNAME[0]}"; }
f1
+func:copy f1 f2
f2


+func:anon f1 var1
ok "$([[ $var1 =~ sym_.{10,} ]])" \
  "+fun-anon set var1 to '$var1'"
ok "$(! +func:ok f1)" \
  "f1 is no longer a function"

-() ( echo "Called ::FUNC-NAME::" )
foo() (:)
+func:wrap - foo

is "$(foo)" "Called foo" \
  "+func:wrap with '::FUNC-NAME::' works"

done-testing

# vim: ft=sh:
