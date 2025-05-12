#!/bin/bash

test_newbranch_workflow() {
  newbranch test-branch
  assertCurrentBranch "test-branch"
}
