# Day 22 – Introduction to Git: My First Repository

Today I started learning **Git**, a distributed version control system used to track changes in files, maintain project history, and collaborate with other developers.

---

# Task 1: Install and Configure Git

## 1. Check Git Version

```bash
git --version
```

**What it does:** Checks whether Git is installed and displays its version.

### Example

```text
git version 2.43.0
```

## 2. Configure Username

```bash
git config --global user.name "Your Name"
```

**What it does:** Sets the name associated with your Git commits.

## 3. Configure Email

```bash
git config --global user.email "you@example.com"
```

**What it does:** Sets the email associated with your Git commits.

## 4. Verify Configuration

```bash
git config --list
```

**What it does:** Displays the current Git configuration.

You can also check individually:

```bash
git config user.name
git config user.email
```

### Why configure username and email?

Git records the author of every commit. This helps identify who made a particular change.

---

# Task 2: Create Your Git Project

## 1. Create a Project Folder

```bash
mkdir devops-git-practice
```

## 2. Enter the Folder

```bash
cd devops-git-practice
```

## 3. Initialize Git

```bash
git init
```

**What it does:** Converts the current folder into a Git repository.

### Example

```text
Initialized empty Git repository
```

Git creates a hidden directory:

```text
.git/
```

## 4. Check Repository Status

```bash
git status
```

**What it does:** Shows the current state of the Git repository.

## 5. Explore `.git/`

```bash
ls -la
```

Then:

```bash
ls -la .git
```

The `.git/` directory stores important Git information such as repository history, branches, references, configuration, and Git objects.

**Important:** Deleting `.git/` removes Git tracking and the local repository history, although the project files themselves remain.

---

# Task 3: Create Your Git Commands Reference

Create a file:

```bash
touch git-commands.md
```

Open it using an editor:

```bash
nano git-commands.md
```

Add the commands learned so far, organized into categories.

## Setup & Configuration

### Check Git Version

```bash
git --version
```

Checks the installed Git version.

### Configure Username

```bash
git config --global user.name "Your Name"
```

Sets the Git username.

### Configure Email

```bash
git config --global user.email "you@example.com"
```

Sets the Git email.

### View Configuration

```bash
git config --list
```

Displays Git configuration.

---

## Basic Workflow

### Initialize Repository

```bash
git init
```

Creates a new Git repository.

### Check Status

```bash
git status
```

Shows the current repository state.

### Stage a File

```bash
git add git-commands.md
```

Moves the file to the staging area.

### Stage All Changes

```bash
git add .
```

Stages all changes in the current directory.

### Commit Changes

```bash
git commit -m "Add Git commands reference"
```

Saves staged changes into the repository history.

---

## Viewing Changes

### View Unstaged Changes

```bash
git diff
```

Shows changes that have not been staged.

### View Staged Changes

```bash
git diff --staged
```

Shows changes that are ready to be committed.

### View Commit History

```bash
git log
```

Displays detailed commit history.

### Compact History

```bash
git log --oneline
```

Displays commits in a short format.

---

# Task 4: Stage and Commit

## 1. Check Status

```bash
git status
```

## 2. Stage the File

```bash
git add git-commands.md
```

## 3. Check What Is Staged

```bash
git status
```

The file should appear under:

```text
Changes to be committed
```

You can also inspect the staged changes:

```bash
git diff --staged
```

## 4. Commit the Changes

```bash
git commit -m "Add Git commands reference"
```

A commit creates a saved snapshot of the staged changes.

## 5. View Commit History

```bash
git log
```

Or use the compact format:

```bash
git log --oneline
```

---

# Task 5: Make More Changes and Build History

Edit `git-commands.md` and add more commands as you learn them.

For example:

```text
git branch
git checkout
git switch
git merge
```

## 1. Check What Changed

```bash
git diff
```

This shows changes made after your previous commit.

## 2. Stage the Changes

```bash
git add git-commands.md
```

## 3. Commit the Changes

```bash
git commit -m "Add branch commands"
```

Repeat the process at least **3 times** with meaningful changes.

### Example Commit History

```bash
git log --oneline
```

```text
77b91bd Add merge command
8dcfc2e Add checkout command
2d5dd7f Add branch commands
45f52c9 Add Git commands reference
```

This demonstrates how Git maintains a history of changes over time.

### Good Commit Messages

```bash
git commit -m "Add Git branch commands"
git commit -m "Add Git merge command"
git commit -m "Update Git workflow examples"
```

Avoid unclear messages such as:

```bash
git commit -m "changes"
git commit -m "update"
```

---

# Task 6: Understand the Git Workflow

## 1. Difference Between `git add` and `git commit`

### `git add`

```bash
git add filename
```

Moves changes from the **working directory** to the **staging area**.

### `git commit`

```bash
git commit -m "message"
```

Saves staged changes into the **repository history**.

Simple flow:

```text
Working Directory
       |
    git add
       ↓
Staging Area
       |
  git commit
       ↓
Repository
```

---

## 2. What Does the Staging Area Do?

The staging area allows you to select and review the changes that will be included in the next commit.

It provides an extra step between modifying files and saving them permanently in Git history.

For example:

```text
File A → Stage
File B → Don't Stage
File C → Stage
```

Only the staged changes will be included in the next commit.

---

## 3. What Information Does `git log` Show?

```bash
git log
```

Git log shows the project's commit history.

It can display:

* Commit ID
* Author
* Date
* Commit message

For a shorter view:

```bash
git log --oneline
```

---

## 4. What Is the `.git/` Folder?

The `.git/` folder contains Git's internal repository information.

It stores information related to:

* Commits
* Branches
* References
* Repository configuration
* Git objects
* HEAD

If `.git/` is deleted, Git tracking and local commit history are lost.

---

## 5. Working Directory vs Staging Area vs Repository

### Working Directory

The place where you create and modify project files.

### Staging Area

The area where you prepare changes before committing them.

### Repository

The area where Git stores commits and project history.

### Complete Workflow

```text
┌──────────────────────┐
│  Working Directory   │
│ Create / Modify      │
│ files                │
└──────────┬───────────┘
           │
        git add
           ↓
┌──────────────────────┐
│    Staging Area       │
│ Changes prepared     │
│ for next commit      │
└──────────┬───────────┘
           │
       git commit
           ↓
┌──────────────────────┐
│      Repository      │
│ Commits & History    │
└──────────────────────┘
```

## Day 22 Key Takeaway

The main concept learned today is the **Git three-stage workflow**:

```text
Modify → Stage → Commit
```

Important commands practiced:

```bash
git --version
git config
git init
git status
git add
git diff
git commit
git log
git log --oneline
```

This foundation will help with upcoming Git topics such as **branches, merging, GitHub, remote repositories, and collaboration**.

