#!/bin/bash

# Initialize directories
mkdir -p \
  git-helper/bin \
  git-helper/src/{core,aliases,utilities,completions} \
  git-helper/tests/{unit,integration} \
  git-helper/docs/TUTORIALS

# Create main executable
cat > git-helper/bin/git-helper <<'EOL'
#!/bin/bash
GIT_HELPER_ROOT="$(dirname "$(realpath "$0")")/.."

# Load core functionality
source "$GIT_HELPER_ROOT/src/utilities/setup.sh"

# Command dispatcher
case $1 in
  -h|--help) show_help ;;
  *) git "$@" ;;
esac
EOL
chmod +x git-helper/bin/git-helper

# Core commands
cat > git-helper/src/core/commit.sh <<'EOL'
#!/bin/bash

cm() {
  if [ -z "$1" ]; then
    echo "Usage: cm \"commit message\""
    return 1
  fi
  git commit -m "$1"
}
EOL

cat > git-helper/src/core/branch.sh <<'EOL'
#!/bin/bash

newbranch() {
  if [ -z "$1" ]; then
    echo "Usage: newbranch <name>"
    return 1
  fi
  git checkout -b "$1"
}
EOL

cat > git-helper/src/core/remote.sh <<'EOL'
#!/bin/bash

pushup() {
  git push -u origin $(git branch --show-current)
}
EOL

# Aliases
cat > git-helper/src/aliases/basic.sh <<'EOL'
#!/bin/bash

alias init='git init'
alias status='git status'
alias log='git log --oneline --graph --decorate'
EOL

cat > git-helper/src/aliases/advanced.sh <<'EOL'
#!/bin/bash

alias rebase='git rebase -i'
alias bisect='git bisect'
EOL

# Utilities
cat > git-helper/src/utilities/error_handling.sh <<'EOL'
#!/bin/bash

_safe_git_exec() {
  if ! command -v git &>/dev/null; then
    echo "Git is not installed!" >&2
    return 1
  fi
  git "$@"
}
EOL

cat > git-helper/src/utilities/help_system.sh <<'EOL'
#!/bin/bash

show_help() {
  echo "Git Helper - Simplified Git Commands"
  echo "Basic: cm, status, log"
  echo "Advanced: rebase, bisect"
}
EOL

cat > git-helper/src/utilities/setup.sh <<'EOL'
#!/bin/bash

# Load all components
for file in "$GIT_HELPER_ROOT"/src/core/*.sh; do source "$file"; done
for file in "$GIT_HELPER_ROOT"/src/aliases/*.sh; do source "$file"; done
for file in "$GIT_HELPER_ROOT"/src/utilities/*.sh; do source "$file"; done
EOL

# Completions
cat > git-helper/src/completions/bash_completion <<'EOL'
# Bash completions for git-helper
complete -W "init status log cm rebase bisect" git-helper
EOL

cat > git-helper/src/completions/zsh_completion <<'EOL'
# Zsh completions for git-helper
# (To be implemented)
EOL

# Documentation
cat > git-helper/docs/CHEATSHEET.md <<'EOL'
# Git Helper Cheatsheet

| Command      | Description                  |
|--------------|------------------------------|
| cm "msg"     | Create commit                |
| newbranch x  | Create and switch to branch  |
| pushup       | Push to current branch       |
EOL

mkdir -p git-helper/docs/TUTORIALS
cat > git-helper/docs/TUTORIALS/getting_started.md <<'EOL'
# Getting Started

1. Run `install.sh`
2. Use `cm` instead of `git commit`
...
EOL

# System files
cat > git-helper/.bashrc-hook <<'EOL'
source ~/.local/bin/git-helper
EOL

cat > git-helper/install.sh <<'EOL'
#!/bin/bash

# Create symlink in user's bin directory
mkdir -p ~/.local/bin
ln -sf "$(pwd)/bin/git-helper" ~/.local/bin/git-helper

# Add to .bashrc if not already present
if ! grep -q "git-helper" ~/.bashrc; then
  echo "source $(pwd)/.bashrc-hook" >> ~/.bashrc
fi

echo "Installation complete. Restart your shell."
EOL
chmod +x git-helper/install.sh

cat > git-helper/uninstall.sh <<'EOL'
#!/bin/bash

# Remove symlink
rm -f ~/.local/bin/git-helper

# Remove from .bashrc
sed -i '/git-helper/d' ~/.bashrc

echo "Uninstallation complete."
EOL
chmod +x git-helper/uninstall.sh

# Test files
cat > git-helper/tests/unit/commit_test.sh <<'EOL'
#!/bin/bash

test_empty_commit() {
  assertCommandFails "cm"
}
EOL

cat > git-helper/tests/integration/workflow_test.sh <<'EOL'
#!/bin/bash

test_newbranch_workflow() {
  newbranch test-branch
  assertCurrentBranch "test-branch"
}
EOL

# README
cat > git-helper/README.md <<'EOL'
# Git Helper

A simplified interface for common Git commands.

## Features
- Intuitive aliases
- Reduced typing
- Built-in help

## Installation
Run `./install.sh`
EOL

echo "Project structure created successfully!"
echo "Run 'cd git-helper && ./install.sh' to install"