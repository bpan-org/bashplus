#!/usr/bin/env bash

source test/init

if +is-cmd git; then
  ok "$(+assert-git)" \
    "'+assert-git' works"
fi

if +is-cmd perl; then
  ok "$(+assert-perl)" \
    "'+assert-perl' works"
fi

if +is-cmd sed; then
  ok "$(+assert-sed)" \
    "'+assert-sed' works"
fi

done-testing
