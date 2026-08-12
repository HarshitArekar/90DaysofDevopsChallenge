# Day 22 – Introduction to Git: My First Repository

Today I started learning **Git**, a distributed version control system used to track changes in files, maintain project history, and collaborate with other developers.

---

# Task 1: Install and Configure Git

## 1. Check Git Version

```bash
git --version
```

**What it does:** Checks whether Git is installed and displays its version.


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

### 1. What is the difference between `git add` and `git commit`?

- `git add` keeps files in the staging area so they can be included in the next commit.

- `git commit` saves staged changes into the repository history with a commit message.

### 2. What does the staging area do? Why doesn't Git just commit directly?

- The staging area stores files and changes that will be included in the next commit.

- It helps review and organize changes before committing.

- It prevents accidental commits.

### 3. What information does `git log` show you?

- `git log` shows commit history.

- It displays commit ID, author, date and commit message.

### 4. What is the `.git/` folder and what happens if you delete it?

- `.git/` stores repository history, branches, tags and configuration files.

- If deleted, Git tracking and commit history are lost.

### 5. What is the difference between a working directory, staging area, and repository?

- **Working Directory** – Place where files are created and modified.

- **Staging Area** – Area where changes are prepared before committing.

- **Repository** – Stores commits, branches and complete project history.

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

