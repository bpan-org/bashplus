#!/usr/bin/env bash

source test/init
source lib/bashplus.bash --say

is "$(+say 'foo bar')" 'foo bar' \
  "+say prints to stdout"

pass "${D}dark$Z"
pass "${DD}DARK$Z"

pass "${R}red$Z"
pass "${RR}RED$Z"

pass "${G}green$Z"
pass "${GG}GREEN$Z"

pass "${Y}yellow$Z"
pass "${YY}YELLOW$Z"

pass "${B}blue$Z"
pass "${BB}BLUE$Z"

pass "${M}magenta$Z"
pass "${MM}MAGENTA$Z"

pass "${C}cyan$Z"
pass "${CC}CYAN$Z"

pass "${W}white$Z"
pass "${WW}WHITE$Z"

done-testing
