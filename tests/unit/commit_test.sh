#!/bin/bash

test_empty_commit() {
  assertCommandFails "cm"
}
