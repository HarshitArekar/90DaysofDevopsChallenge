# Day 07 - Linux File System Hierarchy & Scenario-Based Practice


# Part 1: Linux File System Hierarchy

## 1. / (Root Directory)

### Purpose

The root directory is the top-level directory in Linux. Every file and directory starts from here.

### Command

```bash
ls -l /
```

### Output

![Root Directory](Images/root.png)

### I would use this when...

I need to navigate the Linux file system from the starting point.

---

## 2. /home

### Command

```bash
ls -l /home
```

### Output

![Home Directory](Images/home.png)

### I would use this when...

I need to access user files and personal data.

---

## 3. /root

### Command

```bash
ls -l /root
```

### Output

![Root User Home](Images/root-.png)

### I would use this when...

I am working as the root user.

---

## 4. /etc

### Command

```bash
ls -l /etc
```

### Output

![ETC Directory](Images/etc.png)

### I would use this when...

I need to check or edit configuration files.

---

## 5. /var/log

### Command

```bash
ls -l /var/log
```

### Output

![Log Directory](Images/var.png)

### I would use this when...

I am troubleshooting system or application issues.

---

## 6. /tmp

### Command

```bash
ls -l /tmp
```

### Output

![TMP Directory](Images/tmp.png)

### I would use this when...

I need temporary storage during testing.

---

## 7. /bin

### Command

```bash
ls -l /bin
```

### Output

![BIN Directory](Images/bin.png)

---

## 8. /usr/bin

### Command

```bash
ls -l /usr/bin
```

### Output

![USR BIN Directory](Images/sys-bin.png)

---


# Hands-On Commands

## Find Largest Log Files

```bash
du -sh /var/log/* 2>/dev/null | sort -h | tail -5
```

### Output

![Largest Logs](Images/largest-log-file.png)

---

## Check Hostname

```bash
cat /etc/hostname
```

### Output

![Hostname](Images/host-name.png)

---

## Check Home Directory

```bash
ls -la ~
```

### Output

![Home Contents](Images/check-home-directory-contents.png)

---



# Scenario 1 - Service Not Starting


### Step 1

```bash
systemctl status apache2
```

### Output
 
![Status Check](Images/inactive.png)

### Step 2

```bash
journalctl -u apache2 -n 5
```

### Output

![Logs Check](Images/last-5-log-service.png)

### Step 3

```bash
systemctl is-enabled apache2
```

### Output

![Enabled Check](Images/enabled.png)

### Step 4

```bash
systemctl list-units --type=service
```

### Output

![Service List](Images/list-service.png)

---



# Scenario 2 - High CPU Usage

### Step 1

```bash
top
```

### Output

![Top Command](Images/top.png)

### Step 2

```bash
ps aux --sort=-%cpu | head -10
```

### Output

![CPU Processes](Images/top-cpu-consuming.png)

### Step 3

```bash 
ps -p <PID> -f
```

### Output

![Process Details](Images/deiail-info-high-cpu.png))


---



# Scenario 3 - Finding Service Logs

### Step 1

```bash
systemctl status nginx
```

### Output

![Docker Status](Images/status.png)

### Step 2

```bash
journalctl -u nginx -n 5
```

### Output

![Docker Logs](Images/recent.png)

### Step 3

```bash
journalctl -u nginx -f
```

### Output

![Follow Logs](Images/real-time.png)

---



# Scenario 4 - File Permission Issue

### Step 1

```bash
ls -l /home/user/backup.sh
```

### Output

![Permission Check](Images/current-per.png)

### Step 2

```bash
chmod +x /home/user/backup.sh
```

### Output

![Add Permission](Images/exec-per.png)

### Step 3

```bash
ls -l /home/user/backup.sh 
```
### Output

![view Permission](Images/verify-exe-per.png)

---

### Key Takeaway

Understanding Linux directories, logs, services, and permissions is essential for troubleshooting like a DevOps Engineer.
