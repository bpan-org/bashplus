#!/usr/bin/env bash

source test/init
source lib/bashplus.bash +time

d='[0-9]'
d2='[0-9]{2}'
d4='[0-9]{4}'

like "$(+time:epoch)" "^$d{10}$" \
  "+time:epoch prints epoch time correctly"

like "$(+time:ymd)" "^$d4-$d2-$d2$" \
  "+time:ymd prints yyyy-mm-dd date correctly"

done-testing

# vim: ft=sh:
