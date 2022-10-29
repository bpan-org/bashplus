#!/usr/bin/env bash

source test/init

temp=$(mktemp -d)
+trap 'rm -fr "$temp"'
export PATH=$temp:$PATH

mkdir "$temp/foo"
echo 'echo foo-bar' > "$temp/foo/bar.bash"


+source foo/bar

is "$(+source foo/bar)" foo-bar \
  "+source works"

done-testing

# vim: ft=sh:
