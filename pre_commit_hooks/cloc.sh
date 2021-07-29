#!/usr/bin/env bash

set -o errexit
set -o pipefail
set -o nounset

DEBUG=${DEBUG:=0}
[[ "$DEBUG" = "1" ]] && set -o xtrace

if ! command which cloc &>/dev/null; then
  >&2 echo 'cloc command not found, please install it'
  exit 1
fi

if ! command which jq &>/dev/null; then
  >&2 echo 'jq command not found, please install it'
  exit 1
fi

if [[ "$(cloc --json "$@" | jq '.SUM.comment')" -eq 0 ]]; then
    >&2 echo "file $@ contains 0 comments"
    exit 1
fi

exit 0
