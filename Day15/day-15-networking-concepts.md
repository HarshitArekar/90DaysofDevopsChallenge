### 3. Run: `dig google.com`

### Description

The `dig` command is used to query DNS servers and retrieve information about a domain name.

### Command

```bash
dig google.com
```

### Output

```text
;; ANSWER SECTION:
google.com.    268    IN    A    142.250.189.142
```

### Observation

- A Record: `142.250.189.142`
- TTL: `268 seconds`

### Purpose

- Queries DNS records.
- Displays the IP address associated with the domain.
- Shows the TTL value.

### Why We Use It

We use this command to troubleshoot DNS issues, verify that a domain resolves correctly, and inspect DNS records.

### Screenshot

> Add Screenshot Here
