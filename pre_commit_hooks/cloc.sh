#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

DEBUG=${DEBUG:=0}
[[ "$DEBUG" = "1" ]] && set -o xtrace

if ! command which cloc &>/dev/null; then
  >&2 echo 'cloc command not found'
  exit 1
fi

cloc "$@"
