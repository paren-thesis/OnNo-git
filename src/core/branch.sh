#!/bin/bash

newbranch() {
  if [ -z "$1" ]; then
    echo "Usage: newbranch <name>"
    return 1
  fi
  git checkout -b "$1"
}
