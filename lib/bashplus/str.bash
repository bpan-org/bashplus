+str:ltrim() {
  echo "${1#"${1%%[![:space:]]*}"}"
}

+str:rtrim() {
  echo "${1%"${1##*[![:space:]]}"}"
}

+str:trim() {
  local s=${1#"${1%%[![:space:]]*}"}
  echo "${s%"${s##*[![:space:]]}"}"
}
