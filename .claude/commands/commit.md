---
allowed-tools: Bash(git status:*), Bash(git commit:*)
description: Create a git commit
---

## Context

- Current git status: !`git status`
- Current git diff (staged and unstaged changes): !`git diff HEAD`
- Current branch: !`git branch --show-current`
- Recent commits: !`git log --oneline -10`

## Your task

1. Based on the staged changes, create a single git commit.
- _DONT_ add claude's signature
- _DONT_ run git add for unstaged changes
