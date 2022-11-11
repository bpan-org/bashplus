#!/usr/bin/env bash

source test/init

source bashplus.bash +cmd

if +cmd:ok git; then
  ok "$(+cmd:assert-git)" \
    "'+assert-git' works"
fi

if +cmd:ok perl; then
  ok "$(+cmd:assert-perl)" \
    "'+assert-perl' works"
fi

done-testing
