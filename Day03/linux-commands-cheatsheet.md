# 🚀 Day 03 – Linux Commands Cheat Sheet

> A practical Linux command reference for DevOps engineers and system administrators.

## 🖥️ Process Management

| Command                  | Usage                                     |
| ------------------------ | ----------------------------------------- |
| `ps -ef`                 | Display all running processes             |
| `ps aux`                 | Show detailed process information         |
| `top`                    | Monitor CPU and memory usage in real time |
| `htop`                   | Interactive process viewer                |
| `pgrep nginx`            | Find PID of a process by name             |
| `pidof sshd`             | Get PID of a running program              |
| `kill <PID>`             | Gracefully terminate a process            |
| `kill -9 <PID>`          | Force kill a process                      |
| `pkill nginx`            | Kill process by name                      |
| `jobs`                   | Display background jobs                   |
| `bg`                     | Resume a stopped job in background        |
| `fg`                     | Bring background job to foreground        |
| `nice -n 10 ./script.sh` | Start a new process with lower priority   |
| `renice -n 5 -p <PID>`   | Change priority of an existing process    |

---

## 📂 File System

| Command                   | Usage                                        |
| ------------------------- | -------------------------------------------- |
| `pwd`                     | Print current working directory              |
| `ls -lah`                 | List files with permissions and hidden files |
| `cd <dir>`                | Change directory                             |
| `mkdir project`           | Create a directory                           |
| `touch file.txt`          | Create a new file                            |
| `cp file1 file2`          | Copy a file                                  |
| `mv old new`              | Move or rename a file                        |
| `rm -rf folder`           | Delete directory recursively                 |
| `find / -name file.txt`   | Search for a file                            |
| `grep "text" file.txt`    | Search text inside a file                    |
| `cat file.txt`            | Display file contents                        |
| `less file.txt`           | Read large files                             |
| `head -10 file.txt`       | Show first 10 lines                          |
| `tail -f /var/log/syslog` | Monitor log file live                        |
| `chmod 755 script.sh`     | Change file permissions                      |
| `chown user:group file`   | Change file ownership                        |
| `ln -s source target`     | Create symbolic link                         |
| `du -sh folder`           | Show folder size                             |
| `df -h`                   | Show disk usage                              |

---

## 🌐 Networking Troubleshooting

| Command                    | Usage                       |
| -------------------------- | --------------------------- |
| `ip addr`                  | Show IP addresses           |
| `ip route`                 | Display routing table       |
| `ping google.com`          | Test network connectivity   |
| `curl https://example.com` | Send HTTP request           |
| `wget URL`                 | Download a file             |
| `ss -tulnp`                | Show listening ports        |
| `netstat -tulnp`           | Display network connections |
| `dig google.com`           | Perform DNS lookup          |
| `nslookup google.com`      | Resolve domain name         |
| `traceroute google.com`    | Trace packet route          |
| `hostname -I`              | Display system IP           |

---

## 💾 System Monitoring

| Command       | Usage                       |
| ------------- | --------------------------- |
| `free -h`     | Display memory usage        |
| `vmstat 1`    | Show system performance     |
| `uptime`      | Show system uptime and load |
| `lscpu`       | Display CPU information     |
| `uname -a`    | Show kernel information     |
| `hostnamectl` | Display OS details          |

