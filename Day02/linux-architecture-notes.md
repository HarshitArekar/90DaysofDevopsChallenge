# 🚀 Day 02 – Linux Architecture, Processes, and systemd

---

# 🐧 Linux Architecture

![Linux Architecture](linux-architecture.png)

---

# 🧩 Core Components of Linux

| Component | Description |
|-----------|-------------|
| 🖥️ Hardware | CPU, RAM, Disk, Network devices |
| ⚙️ Kernel | Manages hardware, memory, processes and system resources |
| 💻 Shell | Command-line interface between user and kernel |
| 📦 Applications | Programs that run in user space |
| 🔧 systemd | First process (PID 1), manages services and boot |
| 👤 User Space | Area where users and applications execute |

---

# ⚡ Process in Linux

A **process** is a running instance of a program.

---

# 🔄 Process States

```text
New
 │
 ▼
Ready
 │
 ▼
Running
 │
 ├────────► Waiting
 │              │
 │              ▼
 └────────── Ready

Running
   │
   ▼
Terminated
```

---

# 🔧 Understanding systemd

**systemd** is the first process started by the Linux kernel (PID 1).

---

# 🛠️ 5 Commonly Used Linux Commands

| Command | Purpose |
|----------|-----------------------------|
| `ps` | View running processes |
| `top` | Monitor system resources |
| `systemctl` | Manage services |
| `df -h` | Check disk usage |
| `free -h` | Check memory usage |

---
