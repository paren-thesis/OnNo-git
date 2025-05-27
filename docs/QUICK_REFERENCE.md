# Git Automation Quick Reference Guide

## Branch Operations

### Create
- Local branch: `./bin/createBranch`
- Remote branch: `./bin/createRemoteBranch`

### Delete
- Local branch: `./bin/deleteBranch`
- Remote branch: `./bin/deleteRemoteBranch`

### Switch
- Local branch: `./bin/switchBranch`
- Remote branch: `./bin/switchRemoteBranch`

### Other Operations
- Merge: `./bin/mergeBranch`
- Rebase: `./bin/rebaseBranch`
- Rename: `./bin/renameBranch`
- View history: `./bin/viewBranchHistory`

## Commit Operations

### Basic Commits
- Commit all changes: `./bin/commitAllChanges`
- Commit specific files: `./bin/commitSpecificFiles`
- Commit with message: `./bin/commitWithMessage`
- Commit with date: `./bin/commitWithDate`
- Sign commit: `./bin/commitAndSign`

### Special Operations
- Empty commit: `./bin/emptyCommit`
- Amend last commit: `./bin/amendLastCommit`
- Undo last commit: `./bin/undoLastCommit`
- Skip staging: `./bin/skipStagingAndCommit`

## View Operations
- View commit history: `./bin/viewCommitHistory`
- Check stats: `./bin/checkStats`

## Color Legend
- 🟢 Green: Success messages
- 🔴 Red: Error messages
- 🔵 Blue: Prompts
- 🟡 Orange: Warnings
- ⚪ White: General information

## Tips
1. All commands are interactive and will guide you through the process
2. Use `git status` to check your current state
3. Always review the list of branches before operations
4. Confirm important operations when prompted 