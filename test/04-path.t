#!/usr/bin/env bash

source test/init

path=$PATH

+path /foo /bar

is "$PATH" "/foo:/bar:$path" \
   "+path adds multiple directories correctly"

+path /bar

is "$PATH" "/bar:/foo:$path" \
   "+path removes existing instances before adding a directory"

ok "$(+path | grep -q /usr/local/bin)" \
   "/usr/local/bin is in PATH"

ok "$( (+path | grep -q /foobar) && exit 1; :)" \
   "/foobar is not in PATH"

done-testing

# vim: ft=sh:
