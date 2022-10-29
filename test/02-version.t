#!/usr/bin/env bash

source test/init

ok "$(+version-gt 1.3 1.2.2)" \
  "'+version-gt' works"

ok "$(+version-ge 1.3 1.2.2)" \
  "'+version-ge' works"

ok "$(+version-ge 1.2.2 1.2.2)" \
  "'+version-ge' works"

done-testing
