#!/bin/bash

pushup() {
  git push -u origin $(git branch --show-current)
}
