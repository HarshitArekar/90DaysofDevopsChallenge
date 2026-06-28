# 🚀 Day 10 – File Permissions & File Operations

> Today's Learn how Linux file permissions work by creating, reading, and modifying files.

---

# 📂 Task 1: Create Files

### 1️⃣ Create an Empty File

**Command**

```bash
touch devops.txt
```

**why**

Creates an empty file named `devops.txt`.

📸 **Screenshot**

```text
images/01-touch-devops.png
```

---

### 2️⃣ Create a File with Content

**Command**

```bash
echo "Learning Linux File Permissions" > notes.txt
```

**Meaning**

Creates `notes.txt` and writes text into it.

📸 **Screenshot**

```text
images/02-notes-created.png
```

---

### 3️⃣ Create a Shell Script

**Command**

```bash
vim script.sh
```

Inside the file:

```bash
echo "Hello DevOps"
```

**Meaning**

Creates a shell script using Vim.

📸 **Screenshot**

```text
images/03-script-created.png
```

---

### 4️⃣ Verify Files

**Command**

```bash
ls -l
```

**Meaning**

Lists files along with their permissions.

📸 **Screenshot**

```text
images/04-ls-output.png
```

---

# 📖 Task 2: Read Files

### 1️⃣ Display File Content

**Command**

```bash
cat notes.txt
```

**Meaning**

Displays the complete contents of the file.

📸 **Screenshot**

```text
images/05-cat-notes.png
```

---

### 2️⃣ Open File in Read-Only Mode

**Command**

```bash
vim -R script.sh
```

**Meaning**

Opens the file in Vim without allowing modifications.

📸 **Screenshot**

```text
images/06-vim-readonly.png
```

---

### 3️⃣ Display First Five Lines

**Command**

```bash
head -n 5 /etc/passwd
```

**Meaning**

Shows the first five lines of the `/etc/passwd` file.

📸 **Screenshot**

```text
images/07-head.png
```

---

### 4️⃣ Display Last Five Lines

**Command**

```bash
tail -n 5 /etc/passwd
```

**Meaning**

Shows the last five lines of the `/etc/passwd` file.

📸 **Screenshot**

```text
images/08-tail.png
```

---

# 🔐 Task 3: Modify Permissions

### Make Script Executable

**Command**

```bash
chmod +x script.sh
```

**Meaning**

Adds execute permission to the script.

📸 **Screenshot**

```text
images/09-chmod-x.png
```

---

### Execute Script

**Command**

```bash
./script.sh
```

**Meaning**

Runs the shell script.

📸 **Screenshot**

```text
images/10-run-script.png
```

---

### Make File Read-Only

**Command**

```bash
chmod a-w devops.txt
```

**Meaning**

Removes write permission for all users.

📸 **Screenshot**

```text
images/11-readonly.png
```

---

### Set Permission to 640

**Command**

```bash
chmod 640 notes.txt
```

**Meaning**

* Owner → Read & Write
* Group → Read
* Others → No Permission

📸 **Screenshot**

```text
images/12-chmod640.png
```

---

### Create Directory with 755 Permission

**Command**

```bash
mkdir -m 755 project
```

**Meaning**

Creates a directory with `755` permissions.

📸 **Screenshot**

```text
images/13-project755.png
```

---

# 🧪 Task 4: Test Permissions

### Write to Read-Only File

**Command**

```bash
echo "Testing" >> devops.txt
```

**Meaning**

Attempts to write to a read-only file.

📸 **Screenshot**

```text
images/14-permission-denied.png
```

---

### Execute Without Execute Permission

**Command**

```bash
chmod -x script.sh
./script.sh
```

**Meaning**

Shows that a script cannot run without execute permission.

📸 **Screenshot**

```text
images/15-no-execute.png
```

---

# 📚 What I Learned

* Linux permissions protect files from unauthorized access.
* Execute permission is required to run shell scripts.
* `chmod` changes permissions using symbolic and numeric modes.
* `ls -l` helps verify permission changes quickly.

---

## 📖 References

* `man chmod`
* `man ls`
* `man cat`
* `man head`
* `man tail`

---

⭐ **Day 10 Challenge Completed Successfully!**
