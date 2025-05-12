#!/bin/bash

cm() {
  if [ -z "$1" ]; then
    echo "Usage: cm \"commit message\""
    return 1
  fi
  git commit -m "$1"
}
