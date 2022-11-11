#!/usr/bin/env bash

source test/init
source lib/bashplus.bash +timer +func

[[ ${EPOCHREALTIME-} != "${EPOCHREALTIME-}" ]] ||
  plan skip-all "Test requires Bash 5.0+"

+timer:reset
sleep .01
t=$(+timer)
is "$(( t / 10000 ))" 1 \
  "+timer time is just over 10000ms"

f1() ( sleep .01 )
+func:copy f1 f2

_() (
  +timer:reset
  ::FUNC-CALL::
  +timer
)
+func:wrap _ f1

t=$(f1)

is "$(( t / 10000 ))" 1 \
  "+timer time is just over 10000ms"

timer_label='f2 ---> %s' \
  +timer:wrap f2
out=$(f2 2>&1)
ok "$([[ $out =~ ^f2\ +---'>'\ [0-9] ]])" \
  "+timer output has label: '${out}'"

done-testing

# vim: ft=sh:
