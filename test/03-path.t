#!/usr/bin/env bash

source test/init
source lib/bashplus.bash +env

path=$PATH

+env:path /foo /bar

is "$PATH" "/foo:/bar:$path" \
   "+path adds multiple directories correctly"

+env:path /bar

is "$PATH" "/bar:/foo:$path" \
   "+path removes existing instances before adding a directory"

ok "$(+env:path | grep -q /usr/local/bin)" \
   "/usr/local/bin is in PATH"

ok "$( (+env:path | grep -q /foobar) && exit 1; :)" \
   "/foobar is not in PATH"

done-testing

# vim: ft=sh:
