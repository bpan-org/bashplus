#!/usr/bin/env bash

source test/init
source lib/bashplus.bash +err

try 'die "foo foo"'

is "$rc" 1 \
  "'die' has exit status of 1"

has "$got" 'at line' \
  "Message without newline gets line number"

try 'die "foo foo\n"'

hasnt "$got" 'at line' \
  "Message with newline does not get line number"

try 'die "foo foo
"'

hasnt "$got" 'at line' \
  "Message with newline does not get line number"

try 'die "foo\n" "bar"'

has "$got" 'at line' \
  "Message without newline on last argument gets line number"

try 'die "foo" "bar\n"'

hasnt "$got" 'at line' \
  "Message with newline on last argument does not get line number"

done-testing

# vim: ft=sh:
