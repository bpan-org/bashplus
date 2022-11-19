#!/usr/bin/env bash

source test/init

source lib/bashplus.bash +str

str='   foo   bar   baz   '

is "$(+str:repeat foo 3)" \
  'foofoofoo' \
   '+str:repeat works'

is "$(+str:trim "$str")" \
   'foo   bar   baz' \
   '+str:trim works'

is "$(+str:trim-left "$str")" \
   'foo   bar   baz   ' \
   '+str:trim-left works'

is "$(+str:trim-right "$str")" \
   '   foo   bar   baz' \
   '+str:trim-right works'

done-testing
