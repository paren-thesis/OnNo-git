# Git Automation System Documentation

## Overview
This Git automation system provides a simplified interface for common Git operations through a collection of bash scripts. The system is designed to make Git operations more intuitive and reduce typing while maintaining full functionality.

## Directory Structure
```
bin/
├── functions/
│   ├── branch      # Branch management functions
│   ├── commit      # Commit-related functions
│   └── utils/      # Utility functions and helpers
└── [various scripts] # Individual operation scripts
```

## Core Components

### 1. Branch Management
The system provides comprehensive branch management capabilities through the following functions:

#### Creating Branches
- `create_branch`: Creates a new local branch
  - Validates branch name format
  - Provides immediate feedback on success/failure

- `create_remote_branch`: Creates and pushes a new remote branch
  - Creates local branch
  - Sets up remote tracking
  - Pushes to remote repository

#### Deleting Branches
- `delete_branch`: Removes a local branch
  - Lists available branches
  - Supports force deletion option
  - Validates operation success

- `delete_remote_branch`: Removes a remote branch
  - Lists available branches
  - Deletes from remote repository
  - Provides operation feedback

#### Branch Navigation
- `switch_branch`: Changes to a different local branch
  - Lists available branches
  - Validates branch existence
  - Provides switch confirmation

- `switch_remote_branch`: Switches to a remote branch
  - Fetches latest remote data
  - Creates local tracking branch
  - Sets up remote tracking

#### Branch Operations
- `merge_branch`: Merges one branch into current
  - Lists available branches
  - Handles merge conflicts
  - Provides merge status

- `rebase_branch`: Rebases current branch onto target
  - Lists available branches
  - Handles rebase conflicts
  - Provides rebase status

- `rename_branch`: Renames an existing branch
  - Lists available branches
  - Validates new branch name
  - Updates branch reference

### 2. Utility Functions
Located in `bin/functions/utils/utils`:

- `check_git_repo`: Validates Git repository context
- `confirm`: Handles user confirmation prompts
- `git_status`: Displays current repository status

### 3. Color Coding
The system uses color-coded output for better readability:
- CY (Cyan): Information headers
- GG (Green): Success messages
- OG (Orange): Warnings
- BB (Blue): Prompts
- RE (Red): Errors
- WH (White): General text
- RT (Reset): Reset formatting

## Usage Examples

### Creating a New Branch
```bash
./bin/createBranch
# Follow the prompts to enter branch name
```

### Deleting a Remote Branch
```bash
./bin/deleteRemoteBranch
# Follow the prompts to select branch
```

### Switching Branches
```bash
./bin/switchBranch
# Select from available branches
```

## Installation
1. Clone the repository
2. Run `./install.sh`
3. The scripts will be available in your PATH

## Uninstallation
Run `./uninstall.sh` to remove the system

## Best Practices
1. Always check the list of branches before operations
2. Use meaningful branch names
3. Confirm important operations
4. Check operation feedback messages

## Limitations
1. Branch names must match pattern: `^[a-zA-Z0-9_-]+$`
2. Some operations require manual conflict resolution
3. Remote operations require network connectivity

## Contributing
Feel free to submit issues and enhancement requests!

## License
[Your License Information Here] 