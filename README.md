# OnNo-Git

A sophisticated Git workflow automation system that provides an interactive, user-friendly interface for common and advanced Git operations. This tool simplifies complex Git commands while adding safety checks and enhanced functionality.

## Core Features

-   🎯 Interactive Command Interface

    -   Step-by-step prompts for complex operations
    -   Clear feedback and confirmation dialogs
    -   Color-coded output for better visibility

-   🛡️ Safety and Validation

    -   Built-in checks for dangerous operations
    -   Validation of branch names and commands
    -   Dry-run options for sensitive operations

-   🔄 Advanced Git Operations

    -   Comprehensive branch management
    -   Advanced commit workflows
    -   Interactive tag operations
    -   Smart branch switching
    -   Conflict resolution assistance

-   🎨 User Experience

    -   Reduced typing with intuitive aliases
    -   Built-in help and documentation
    -   Color-coded status and feedback
    -   Progress indicators for long operations

-   🔧 Extended Functionality
    -   Support for Git hooks and customization
    -   Submodule management
    -   Remote repository operations
    -   Advanced diff and merge tools

## New Functions

### Tag Management (`git_tag`)

-   List and filter tags
-   Create lightweight, annotated, and signed tags
-   Delete local and remote tags
-   Push tags to remote
-   Verify tag signatures
-   Compare tags

### Branch Switching (`git_switch`)

-   Switch to existing branches
-   Create and switch to new branches
-   Detach HEAD to specific commits
-   Manage branch tracking
-   Handle uncommitted changes safely
-   Create orphan branches

## Available Commands

### Repository Operations

-   🏁 `onno-init` - Initialize repository with various configuration options
-   📥 `onno-clone` - Clone repositories with advanced options (shallow, sparse, etc.)
-   📊 `onno-status` - View repository status with customizable output formats

### Branch Operations

-   🌿 `onno-branch` - Comprehensive branch management
-   🔄 `onno-switch` - Smart branch switching with safety checks
-   🔀 `onno-merge` - Advanced merge operations with conflict resolution
-   📌 `onno-tag` - Full tag management system

### Commit Operations

-   ✅ `onno-commit` - Interactive commit operations with multiple options
-   📝 `onno-commit --message` - Commit with customizable messages
-   🕒 `onno-commit --date` - Commit with specific dates
-   🔏 `onno-commit --sign` - GPG-signed commits
-   ↩️ `onno-commit --amend` - Modify the last commit

### Remote Operations

-   ⬆️ `onno-push` - Push changes with various safety options
-   ⬇️ `onno-pull` - Pull changes with merge/rebase options
-   🔄 `onno-fetch` - Fetch updates with advanced configuration

### Analysis Tools

-   📈 `onno-log` - View history with custom formatting
-   🔍 `onno-diff` - Compare changes with various options
-   🔎 `onno-grep` - Search through repository content
-   ⚡ `onno-bisect` - Binary search through history

## Documentation

-   [Full Documentation](docs/GIT_AUTOMATION.md)
-   [Quick Reference Guide](docs/QUICK_REFERENCE.md)

## Installation

### Linux/Mac

Run `./install.sh`

### Windows

1. Clone the repository into your C: drive:
    ```
    git clone https://github.com/paren-thesis/OnNo-git.git C:\OnNo-git
    ```
2. Add the bin directory to your PATH:
    - If using Git Bash: Add this line to your ~/.bashrc:
        ```
        export PATH=$PATH:/c/OnNo-git/bin
        ```
    - If using PowerShell: Run this command in an admin PowerShell:
        ```
        [Environment]::SetEnvironmentVariable("Path", $env:Path + ";C:\OnNo-git\bin", "User")
        ```
    - If using Command Prompt: Add C:\OnNo-git\bin to your system PATH through System Properties > Environment Variables

## Uninstallation

### Linux/Mac

Run `./uninstall.sh`

### Windows

1. Remove the bin directory from your PATH
2. Delete the C:\OnNo-git directory
