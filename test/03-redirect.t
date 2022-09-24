#!/usr/bin/env bash

# shellcheck disable=2275

source test/init

source bashplus.bash

foo() {
  x=$1
  echo helloooooooooooo >&2
}

try +2:x foo bar
is "$got" "" \
  "+2:x removes stderr"

+2:x foo bar
is "$x" bar \
  "+2:x preserves global variable assignment"

is "$(+=:x eval 'echo out; echo err >&2')" "" \
  "+=:x removes all output"

done-testing
