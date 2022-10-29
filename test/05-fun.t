#!/usr/bin/env bash

source test/init

hello() ( echo Hello )
goodbye() ( echo Goodbye )
wrapper() ( echo 1; ::function::; echo 2 )

+fun-wrap wrapper hello goodbye

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
+fun-copy f1 f2
f2


+fun-anon f1 var1
ok "$([[ $var1 =~ sym_.{10,} ]])" \
  "+fun-anon set var1 to '$var1'"
ok "$(! +is-func f1)" \
  "f1 is no longer a function"


done-testing

# vim: ft=sh:
