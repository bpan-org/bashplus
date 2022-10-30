#!/usr/bin/env bash

source test/init

+source bashplus/say

is "$(+say 'foo bar')" 'foo bar' \
  "+say works"

done-testing
