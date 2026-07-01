# 🚀 Day 12 – Linux Revision & Practice ( Revision (Days 01–11) )

- In the first 11 days of my #90DaysOfDevOps journey, I focused on building strong Linux fundamentals through hands-on practice. From managing users and permissions to troubleshooting services, every task has helped me understand how real systems work.

# 📚 Topics Revised

- ✅ Linux Basics
- ✅ Linux File System 
- ✅ Processes & Services
- ✅ File Permissions
- ✅ Ownership (chown)
- ✅ Groups (chgrp)
- ✅ Users & Groups
- ✅ Basic Linux Commands

---

# 🔹 Task 1 – Review Your DevOps Journey

## Objective

Take a few minutes to review your progress from Day 01 until today.

### Reflection

- Revisited my learning roadmap.
- Checked completed topics.
- Identified concepts that need more practice.
- Prepared goals for upcoming days.

---

# 🔹 Task 2 – Process & Service Health Check

## Commands Practiced

```bash
ps -ef

systemctl status ssh

journalctl -u ssh -n 20
```

## What I Learned

- `ps -ef` displays all running processes.
- `systemctl status` checks whether a service is running properly.
- `journalctl` helps investigate service logs and troubleshoot issues.

---

# 🔹 Task 3 – File Management Practice

## Commands Practiced

```bash
mkdir revision-demo

cd revision-demo

touch notes.txt

echo "Linux Revision Day 12" >> notes.txt

cp notes.txt backup.txt

ls -l

chmod 644 notes.txt

sudo chown ubuntu:ubuntu notes.txt
```

## What I Learned

- Created directories and files.
- Added text to a file.
- Copied files.
- Modified file permissions.
- Changed file ownership.

---

# 🔹 Task 4 – My Linux Emergency Commands

These are the commands I would use first while troubleshooting a Linux server.

| Command | Purpose |
|----------|---------|
| `ps -ef` | View running processes |
| `systemctl status` | Check service health |
| `journalctl` | Read service logs |
| `ls -l` | Verify file permissions |
| `chmod` | Change permissions |

---

# 🔹 Task 5 – User & Ownership Practice

## Commands Practiced

```bash
sudo useradd revisionuser

id revisionuser

sudo chown revisionuser:revisionuser notes.txt

ls -l notes.txt
```

## What I Learned

- Created a new Linux user.
- Verified user information.
- Changed file ownership.
- Confirmed ownership changes.

---

# 🧠 Self Assessment

## 1️⃣ Which three Linux commands help me the most?

- `systemctl status`
- `ps -ef`
- `ls -l`

These commands help me quickly diagnose service issues, monitor processes, and verify file permissions.

---

## 2️⃣ How do I verify whether a service is healthy?

```bash
systemctl status ssh

journalctl -u ssh -n 20

ps -ef
```

---

## 3️⃣ How do I safely change file ownership and permissions?

```bash
sudo chown ubuntu:ubuntu notes.txt

chmod 644 notes.txt
```

This ensures the correct user owns the file while maintaining secure permissions.

---

## 4️⃣ My Goals for the Next Three Days

- Improve Linux troubleshooting skills.
- Practice user and group management.
- Learn Shell Scripting basics.
- Build confidence with real-world Linux tasks.

journey with confidence.

