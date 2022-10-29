#!/usr/bin/env bash

source test/init

hello() ( echo Hello )
goodbye() ( echo Goodbye )
wrapper() ( echo 1; ::function::; echo 2 )

+wrap wrapper hello goodbye

is "$(hello; goodbye)" "\
1
Hello
2
1
Goodbye
2" \
  "+wrap works"

done-testing

# vim: ft=sh:
