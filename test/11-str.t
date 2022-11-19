#!/usr/bin/env bash

source test/init

source lib/bashplus.bash +str

str='   foo   bar   baz   '

is "$(+str:ltrim "$str")" \
   'foo   bar   baz   ' \
   '+str:ltrim works'

is "$(+str:rtrim "$str")" \
   '   foo   bar   baz' \
   '+str:rtrim works'

is "$(+str:trim "$str")" \
   'foo   bar   baz' \
   '+str:trim works'

done-testing
