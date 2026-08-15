# Day 23 – Git Branching & Working with GitHub

## Task 1: Understanding Branches

### 1. What is a branch in Git?

- A branch is a separate workspace used to make changes without affecting the main project.
- A branch points to a commit in Git history.

### 2. Why do we use branches instead of committing everything to `main`?

- If we commit everything directly to `main`, it may break the project.
- We use branches to test and develop features safely before merging.

### 3. What is `HEAD` in Git?

- `HEAD` points to the latest commit in the current branch.

### 4. What happens to your files when you switch branches?

- Git updates your working directory to match the selected branch.
  - Untracked files remain unchanged.
  - Tracked files change according to the branch.
  - Uncommitted changes may block switching.

---

