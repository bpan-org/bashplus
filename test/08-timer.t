#!/usr/bin/env bash

source test/init

[[ ${EPOCHREALTIME-} != "${EPOCHREALTIME-}" ]] ||
  plan skip-all "Test requires Bash 5.0+"

+timer-start
sleep .01
t=$(+timer)
is "$(( t / 10000 ))" 1 \
  "+timer time is just over 10000ms"

f1() ( sleep .01 )
+fun-copy f1 f2

_() (
  +timer-start
  ::function::
  +timer
)
+fun-wrap _ f1

t=$(f1)

is "$(( t / 10000 ))" 1 \
  "+timer time is just over 10000ms"

+timer-wrap f2
t=$(f2)
is "$(( t / 10000 ))" 1 \
  "+timer time is just over 10000ms"

done-testing

# vim: ft=sh:
