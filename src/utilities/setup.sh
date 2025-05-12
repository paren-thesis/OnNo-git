#!/bin/bash

# Load all components
for file in "$GIT_HELPER_ROOT"/src/core/*.sh; do source "$file"; done
for file in "$GIT_HELPER_ROOT"/src/aliases/*.sh; do source "$file"; done
for file in "$GIT_HELPER_ROOT"/src/utilities/*.sh; do source "$file"; done
