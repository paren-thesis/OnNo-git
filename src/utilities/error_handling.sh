#!/bin/bash

_safe_git_exec() {
  if ! command -v git &>/dev/null; then
    echo "Git is not installed!" >&2
    return 1
  fi
  git "$@"
}
