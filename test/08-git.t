#!/usr/bin/env bash

source test/init
source lib/bashplus.bash +git

ok "$(+git:in-repo)" \
  "+git:in-repo works"

ok "$(+git:in-top-dir)" \
  "+git:in-top-dir works"

done-testing
