#!/usr/bin/env bash

source test/init

+source bashplus/git

ok "$(+git:in-repo)" \
  "+git:in-repo works"

ok "$(+git:in-top-dir)" \
  "+git:in-top-dir works"

done-testing
