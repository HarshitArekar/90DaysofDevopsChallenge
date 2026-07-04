# Day 14 - Networking Fundamentals & Hands-on


Today's I Learn the basics of Linux networking and practice essential troubleshooting commands used by DevOps Engineers to verify connectivity, DNS resolution, ports, and web services.


# Task 1: Understand Networking Basics

## OSI Model (7 Layers)

| Layer | Name | Purpose |
|--------|------|---------|
| Layer 7 | Application | HTTP, HTTPS, DNS, FTP |
| Layer 6 | Presentation | Data Encryption & Compression |
| Layer 5 | Session | Manages Communication Sessions |
| Layer 4 | Transport | TCP / UDP |
| Layer 3 | Network | IP Addressing & Routing |
| Layer 2 | Data Link | MAC Address |
| Layer 1 | Physical | Cables, Switches, Signals |


## TCP/IP Model

| Layer | Protocol Examples |
|--------|-------------------|
| Application | HTTP, HTTPS, DNS, SSH |
| Transport | TCP, UDP |
| Internet | IP, ICMP |
| Network Access | Ethernet, Wi-Fi |


## Protocol Location

| Protocol | Layer |
|----------|-------|
| HTTP/HTTPS | Application |
| DNS | Application |
| TCP/UDP | Transport |
| IP | Internet |
| Ethernet | Network Access |

---

## Real Example

```
curl https://google.com
```

Application Layer (HTTP)
⬇
Transport Layer (TCP)
⬇
Internet Layer (IP)
⬇
Network Access Layer (Ethernet/Wi-Fi)

---

# Task 2: Identity Check

## Command Used

```bash
hostname -I
```

### Alternative

```bash
ip addr show
```

## Purpose

Displays the IP address assigned to your Linux machine.

## Why We Use It

Before troubleshooting any network issue, you should know your server's IP address.

### Screenshot

> 📷 Paste output here

---

# Task 3: Reachability Test

## Command Used

```bash
ping -c 4 google.com
```

## Purpose

Checks whether another host is reachable over the network.

## What to Observe

- Packet Loss
- Latency (ms)
- Number of packets sent and received

## Example Observation

Successfully sent 4 packets with 0% packet loss.

### Screenshot

> 📷 Paste output here

---

# Task 4: Trace Network Path

## Command Used

```bash
traceroute google.com
```

### Alternative

```bash
tracepath google.com
```

## Purpose

Shows every router (hop) between your machine and the destination.

## What to Observe

- Total hops
- Time taken
- Any timeout (* * *)

### Screenshot

> 📷 Paste output here

---

# Task 5: Check Listening Ports

## Command Used

```bash
ss -tulpn
```

### Alternative

```bash
netstat -tulpn
```

## Purpose

Lists all TCP and UDP ports currently listening on the system.

## What to Observe

- Port Number
- Protocol
- Service Name
- Process ID

### Screenshot

> 📷 Paste output here

---

# Task 6: DNS Lookup

## Command Used

```bash
dig google.com
```

### Alternative

```bash
nslookup google.com
```

## Purpose

Resolves a domain name into an IP address.

## What to Observe

- IP Address
- DNS Server
- Query Time

### Screenshot

> 📷 Paste output here

---

# Task 7: HTTP Header Check

## Command Used

```bash
curl -I https://google.com
```

## Purpose

Checks whether a web server is responding and returns only HTTP headers.

## Common Status Codes

| Code | Meaning |
|------|----------|
| 200 | OK |
| 301 | Redirect |
| 403 | Forbidden |
| 404 | Not Found |
| 500 | Internal Server Error |

### Screenshot

> 📷 Paste output here

---

# Task 8: Active Connections

## Command Used

```bash
netstat -an | head
```

## Purpose

Displays active network connections.

## Observe

- LISTEN
- ESTABLISHED
- TIME_WAIT

### Screenshot

> 📷 Paste output here

---

# Task 9: Port Probe

## Step 1

Find a listening port.

```bash
ss -tulpn
```

Example

```
22 SSH
80 Nginx
```

---

## Step 2

Test the port.

SSH

```bash
nc -zv localhost 22
```

OR

Nginx

```bash
curl -I http://localhost:80
```

## Purpose

Verifies whether the selected service is reachable.

### Screenshot

> 📷 Paste output here

---

## Step 3

Observation

Example

```
Port 22 is reachable.
SSH service is running successfully.
```

If not reachable:

Next checks

```bash
sudo systemctl status ssh
```

```bash
sudo ufw status
```

```bash
ss -tulpn
```

---

# Reflection

## 1. Which command gives the fastest signal when something is broken?

Answer

```
ping
```

Reason

It quickly checks whether the destination is reachable.

---

## 2. If DNS fails, which layer would you inspect?

- Application Layer
- Transport Layer (UDP Port 53)
- Internet Layer

---

## 3. If HTTP 500 appears?

It means the server is reachable, but the application has encountered an internal error.

Commands to investigate

```bash
sudo systemctl status nginx
```

```bash
journalctl -u nginx
```

```bash
tail -f /var/log/nginx/error.log
```

---

## 4. Two Follow-up Checks

Check service status

```bash
systemctl status nginx
```

Check system logs

```bash
journalctl -xe
```

---

# Commands Used

| Command | Purpose |
|----------|---------|
| hostname -I | Show system IP address |
| ip addr show | Display network interfaces |
| ping -c 4 google.com | Test network connectivity |
| traceroute google.com | Trace packet path |
| tracepath google.com | Alternative to traceroute |
| ss -tulpn | Show listening ports |
| netstat -tulpn | Alternative for listening ports |
| dig google.com | DNS lookup |
| nslookup google.com | Alternative DNS lookup |
| curl -I https://google.com | Check HTTP response |
| netstat -an \| head | Show active connections |
| nc -zv localhost 22 | Test local port connectivity |
| systemctl status nginx | Check service status |
| journalctl -u nginx | View service logs |
| tail -f /var/log/nginx/error.log | Monitor error logs |

---

# What I Learned

- Understood the OSI and TCP/IP networking models.
- Learned how to identify a system's IP address.
- Verified network connectivity using ping.
- Traced the network path with traceroute.
- Examined listening ports and active services.
- Performed DNS lookups using dig and nslookup.
- Checked HTTP responses with curl.
- Tested local ports using nc.
- Practiced basic network troubleshooting techniques used by DevOps Engineers.
