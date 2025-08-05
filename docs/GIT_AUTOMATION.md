# Full Documentation

## Overview

OnNo-git is a comprehensive Git workflow automation system that enhances Git operations through interactive, user-friendly commands. The system provides safety checks, intuitive interfaces, and extended functionality while maintaining compatibility with standard Git operations.

## Directory Structure

```
bin/
├── functions/          # Core functionality modules
│   ├── branch/        # Branch management functions
│   ├── commit/        # Commit operation handlers
│   ├── tag/          # Tag management system
│   ├── merge/        # Merge and conflict resolution
│   ├── push/         # Remote operation handlers
│   ├── pull/         # Update and sync functions
│   ├── bisect/       # History search utilities
│   ├── grep/         # Repository search functions
│   └── utils/        # Common utilities and helpers
├── onno              # Main command dispatcher
├── onno-add          # Staging operations
├── onno-branch       # Branch management
├── onno-commit       # Commit operations
├── onno-diff         # Comparison tools
├── onno-fetch        # Remote data retrieval
├── onno-init         # Repository initialization
├── onno-log          # History viewing
├── onno-merge        # Merge operations
├── onno-mv          # File movement
├── onno-pull        # Update operations
├── onno-push        # Remote synchronization
├── onno-rebase      # History modification
├── onno-reset       # State management
├── onno-restore     # File recovery
├── onno-rm          # File removal
├── onno-status      # State inspection
├── onno-switch      # Branch switching
└── onno-tag         # Tag management
```

## Core Components

### 1. Command Categories

#### Repository Management

-   `onno-init`: Repository initialization and configuration

    -   Basic initialization
    -   Template management
    -   Shared repository setup
    -   Initial branch configuration
    -   Object format selection

-   `onno-clone`: Repository cloning with advanced options
    -   Basic/shallow/bare cloning
    -   Sparse checkout support
    -   Submodule handling
    -   Custom remote naming
    -   Network protocol selection

#### Branch Operations

-   `onno-branch`: Comprehensive branch management

    -   Create/delete branches
    -   Rename branches
    -   List and filter branches
    -   Branch description management
    -   Stash association

-   `onno-switch`: Enhanced branch switching
    -   Switch between branches
    -   Create and switch
    -   Detach HEAD operations
    -   Track remote branches
    -   Handle uncommitted changes

#### Commit Workflows

-   `onno-commit`: Advanced commit operations
    -   Basic/interactive commits
    -   Signed commits
    -   Date specification
    -   Amend operations
    -   Hooks management
    -   Message templates

#### Branch Operations

-   `merge_branch`: Merges one branch into current

    -   Lists available branches
    -   Handles merge conflicts
    -   Provides merge status

-   `rebase_branch`: Rebases current branch onto target

    -   Lists available branches
    -   Handles rebase conflicts
    -   Provides rebase status

-   `rename_branch`: Renames an existing branch
    -   Lists available branches
    -   Validates new branch name
    -   Updates branch reference

#### Remote Operations

-   `onno-push`: Remote synchronization

    -   Basic/force push
    -   Tag pushing
    -   Mirror operations
    -   Delete remote branches
    -   Network options

-   `onno-pull`: Update local repository
    -   Merge/rebase options
    -   Submodule handling
    -   Autostash support
    -   Conflict resolution
    -   Custom refspecs

#### Analysis and Search

-   `onno-log`: History analysis

    -   Custom formatting
    -   Date filtering
    -   Author filtering
    -   Graph visualization
    -   Statistical analysis

-   `onno-diff`: Change comparison
    -   File comparison
    -   Branch differences
    -   Staged changes
    -   Format options
    -   Whitespace handling

### 2. User Interface Features

#### Color Coding System

The system uses color-coded output for enhanced readability:

-   🔵 Blue (BB): Interactive prompts and user input
-   🟢 Green (GG): Success messages and confirmations
-   🔴 Red (RE): Error messages and warnings
-   🟡 Orange (OG): Caution and important notices
-   🔷 Cyan (CY): Information headers and status
-   ⚪ White (WH): General text and descriptions

#### Interactive Elements

-   Confirmation prompts for dangerous operations
-   Progress indicators for long-running tasks
-   Clear error messages with recovery suggestions
-   Context-aware command suggestions
-   Operation preview capabilities

## Usage Examples

### Branch Management

```bash
# Create and switch to a new branch
onno-branch -c feature/new-feature

# Delete a branch with safety checks
onno-branch -d old-feature

# Switch branches with stash handling
onno-switch development --stash
```

### Commit Operations

```bash
# Interactive commit with message
onno-commit -i "feat: add new feature"

# Commit with date specification
onno-commit --date="2025-08-05 14:30:00" -m "historical fix"

# Sign and verify commit
onno-commit --sign -m "secure update"
```

### Remote Operations

```bash
# Push with tags
onno-push --tags

# Pull with rebase
onno-pull --rebase

# Fetch specific branches
onno-fetch origin feature/*
```

## Installation

### Linux/Mac

1. Clone the repository:
    ```bash
    git clone https://github.com/paren-thesis/OnNo-git.git
    ```
2. Run the installer:
    ```bash
    ./install.sh
    ```

### Windows

1. Clone into C: drive:
    ```bash
    git clone https://github.com/paren-thesis/OnNo-git.git C:\OnNo-git
    ```
2. Add to PATH:
    - Git Bash: Add to ~/.bashrc:
        ```bash
        export PATH=$PATH:/c/OnNo-git/bin
        ```
    - PowerShell (Admin):
        ```powershell
        [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\OnNo-git\bin", "User")
        ```
    - CMD: Add C:\OnNo-git\bin to System Properties > Environment Variables

## Uninstallation

### Linux/Mac

```bash
./uninstall.sh
```

### Windows

1. Remove bin directory from PATH
2. Delete C:\OnNo-git directory

## Best Practices

### Safety

1. Always review status before operations (`onno-status`)
2. Use dry-run options for destructive operations
3. Keep local branches in sync with remote
4. Verify signatures for security-critical commits

### Efficiency

1. Utilize batch operations for multiple files
2. Use interactive mode for complex changes
3. Take advantage of aliases for common operations
4. Leverage the auto-stash feature during updates

### Naming Conventions

1. Branch names: `^[a-zA-Z0-9_/-]+$`
    - feature/name
    - bugfix/issue-123
    - release/v1.2.3
2. Commit messages: Use conventional commits
    - feat: new feature
    - fix: bug fix
    - docs: documentation
    - style: formatting
    - refactor: code restructuring

## Limitations

1. Some operations require Git 2.25.0 or newer
2. Complex merges may require manual resolution
3. Network operations depend on remote availability
4. GPG signing requires configured GPG keys
5. Some features may be platform-specific

## Contributing

1. Fork the repository
2. Create a feature branch
3. Add tests for new features
4. Submit a pull request
5. Follow the code style guidelines

## License

MIT License - Feel free to use, modify, and distribute this software.
See LICENSE file for complete terms.
