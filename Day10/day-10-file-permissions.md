# 🚀 Day 10 – File Permissions & File Operations

>Today i Practiced Linux file operations and permission management using common Linux commands.

---

# 📋 Task 1: Create Files

### 💻 Commands

```bash
touch devops.txt

echo "Learning Linux File Permissions" > notes.txt

vim script.sh
```

Inside `script.sh`

```bash
echo "Hello DevOps"
```

Verify

```bash
ls -l
```

### 📖 What these commands do

| Command  | Purpose                                               |
| -------- | ----------------------------------------------------- |
| `touch`  | Creates an empty file                                 |
| `echo >` | Creates a file and writes content                     |
| `vim`    | Creates or edits a file                               |
| `ls -l`  | Lists files with detailed information and permissions |

![notes](images/file-create.png)

---

# 📋 Task 2: Read Files

### 🎯 Objective

Read file contents using different Linux utilities.

### 💻 Commands

```bash
cat notes.txt

vim -R script.sh

head -n 5 /etc/passwd

tail -n 5 /etc/passwd
```

### 📖 What these commands do

| Command  | Purpose                          |
| -------- | -------------------------------- |
| `cat`    | Displays the entire file content |
| `vim -R` | Opens a file in read-only mode   |
| `head`   | Displays the first 5 lines       |
| `tail`   | Displays the last 5 lines        |

### 📸 Output

![notes](images/read-file.png)

---

# 📋 Task 3: Understand & Modify Permissions

### 🎯 Objective

Learn how Linux permissions work and modify them.

### 💻 Commands

```bash
chmod +x script.sh

./script.sh

chmod a-w devops.txt

chmod 640 notes.txt

mkdir -m 755 project
```

### 📖 What these commands do

| Command        | Purpose                                              |
| -------------- | ---------------------------------------------------- |
| `chmod +x`     | Adds execute permission                              |
| `./script.sh`  | Executes the script                                  |
| `chmod a-w`    | Removes write permission                             |
| `chmod 640`    | Sets permission to Owner: RW, Group: R, Others: None |
| `mkdir -m 755` | Creates a directory with 755 permissions             |

### 📸 Output

![notes](images/permission.png)

---

# 📋 Task 4: Test Permissions

### 🎯 Objective

Verify how Linux enforces file permissions.

### 💻 Commands

```bash
echo "Testing" >> devops.txt

chmod -x script.sh

./script.sh
```

### 📖 What these commands do

| Command       | Purpose                              |
| ------------- | ------------------------------------ |
| `echo >>`     | Attempts to append content to a file |
| `chmod -x`    | Removes execute permission           |
| `./script.sh` | Attempts to run the script           |

### 📸 Output

![notes](images/test-permission.png)


---

# 📚 Key Learnings

* File permissions determine who can access or modify files.
* Execute permission is required to run shell scripts.
* `chmod` supports both symbolic and numeric permission modes.
* `ls -l` is useful for verifying permission changes.
