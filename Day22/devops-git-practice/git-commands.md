
# Day 22 – Git Commands Reference

## Git Local Setup

### Check Git Version

```bash
git -v
```

Checks whether Git is installed and displays the Git version.

### If Git Is Not Installed

```bash
sudo apt update
```

Updates the package information.

```bash
sudo apt install git
```

Installs Git.

### Configure Git Username

```bash
git config --global user.name "Harshit Arekar"
```

Sets the Git username.

### Configure Git Email

```bash
git config --global user.email "arekarharshit61@gmail.com"
```

Sets the Git email.

---

# Git Commands Used Today


| Command                                                         | Meaning                                                    |
| --------------------------------------------------------------- | ---------------------------------------------------------- |
| `git -v`                                                        | Checks the installed Git version.                          |
| `git config --global user.name "Harshit Arekar"`                | Sets the Git username globally.                            |
| `git config --global user.email "arekarharshit61@gmail.com"`    | Sets the Git email globally.                               |
| `git init`                                                      | Initializes a new Git repository in the current directory. |
| `git status`                                                    | Shows the current status of the Git repository.            |
| `git add git-commands.md`                                       | Adds the file to the staging area.                         |
| `git diff --staged`                                             | Shows changes that are currently staged.                   |
| `git commit -m "Add Git commands reference"`                    | Saves staged changes as a commit with a message.           |
| `git log`                                                       | Displays the detailed commit history.                      |
| `git log --oneline`                                             | Displays commit history in a compact format.               |

---



