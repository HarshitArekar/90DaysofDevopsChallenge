# Apache2 Linux Troubleshooting Runbook

This runbook provides quick troubleshooting steps to verify apache2 service health on an AWS EC2 Ubuntu server.

# Environment Basics

## Command 1: Check Kernel and System Information

```bash
uname -a
```

![Kernel and System Information](Kernel-and-System-Information.png)

### Observation

* Linux kernel version verified.
* System architecture confirmed.

---

## Command 2: Check Operating System Details

```bash
cat /etc/os-release
```

![Operating System Details](Operating-System-Details.png)

### Observation

* Operating system identified as Ubuntu 22.04 LTS.
* Debian-based Linux distribution.

---

# Filesystem Sanity

## Command 3: Create Temporary Directory

```bash
mkdir /tmp/runbook-demo
```

![Temporary Directory](Temporary-Directory.png)

### Observation

* Temporary test directory created successfully.
* Filesystem is writable.

---

## Command 4: Copy and Verify File

```bash
cp /etc/hosts /tmp/runbook-demo/hosts-copymkdir /tmp/runbook-demo && ls -l /tmp/runbook-demo
```

![Copy and Verify File](Copy-and-Verify-File.png)

### Observation

* File copied successfully.
* Read and write operations functioning correctly.

---

# Snapshot: CPU & Memory

## Command 5: Check Apache Process Resource Usage

```bash
ps -C apache2 -o pid,pcpu,pmem,cmd
```

![CPU & Memory](CPU-&-Memory.png)

### Observation

* Apache processes detected.
* CPU and memory usage within normal range.

---

## Command 6: Check System Memory

```bash
free -h
```
![System Memory](System-Memory.png)


### Observation

* Sufficient free memory available.
* No memory pressure detected.

---

# Snapshot: Disk & IO

## Command 7: Check Disk Usage

```bash
df -h
```

![Disk Usage](Disk-Usage.png)

### Observation

* Filesystem usage is low.
* Adequate free disk space available.

---

# Snapshot: Network

## Command 8: Check Apache Listening Port

```bash
sudo ss -tulpn | grep 80
```
![Listening Port](Listening-Port.png)


### Observation

* Apache2 is listening on port 80.
* No port conflict detected.

---

## Command 9: Test Apache HTTP Response

```bash
curl -I http://localhostsudo ss -tulpn | grep 80
```

![Apache HTTP Response](Apache-HTTP-Response.png)

### Observation

* HTTP 200 OK received.
* Apache web server is accessible.

---

# Logs Reviewed

## Command 10: Review Apache Service Logs

```bash
sudo journalctl -u apache2 -n 50
```

![Apache Service Logs](Apache-Service-Logs.png)

### Observation

* Apache service started successfully.
* No critical errors detected.

---

## Command 11: Review Apache Error Logs

```bash
sudo tail -n 50 /var/log/apache2/error.log
```

![Apache Error Logs](Apache-Error-Logs.png)

### Observation

* Error logs reviewed.
* No recent critical errors found.

---

# Quick Findings

* Apache2 service is active and running.
* Apache is listening on port 80.
* CPU and memory utilization are normal.
* Disk space is sufficient.
* HTTP requests are processed successfully.
* No significant errors detected in Apache logs.

---

# If This Worsens

## 1. Restart Apache Service

```bash
sudo systemctl restart apache2
```

**Purpose:** Recover from temporary service issues.



## 2. Validate Apache Configuration

```bash
sudo apache2ctl configtest
```

**Purpose:** Detect syntax errors in Apache configuration files.



## 3. Investigate Port Conflicts

```bash
sudo ss -tulpn | grep :80
```

**Purpose:** Identify processes occupying port 80.



# Conclusion

The Apache2 service is healthy and operational. Resource utilization, network accessibility, and log analysis do not indicate any active issues. The server is successfully listening on port 80 and responding to HTTP requests.
