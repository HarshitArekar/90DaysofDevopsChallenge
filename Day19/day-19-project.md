# Day 19 – Shell Scripting Project: Log Rotation, Backup & Crontab

## Objective

In this project, I applied Shell Scripting concepts from Days 16–18 to create real-world server maintenance automation.

The project contains:

* Log rotation script
* Server backup script
* Crontab scheduling
* Combined maintenance script

---

# Task 1 – Log Rotation Script

## File: `log_rotate.sh`

### Purpose

The `log_rotate.sh` script performs log management.

It:

1. Takes a log directory as an argument.
2. Compresses `.log` files older than 7 days using `gzip`.
3. Deletes `.gz` files older than 30 days.
4. Displays the number of compressed and deleted files.
5. Exits if the log directory does not exist.


---

# Task 2 – Server Backup Script

## File: `backup.sh`

### Purpose

The `backup.sh` script creates a compressed server backup.

It:

1. Takes a source directory as an argument.
2. Takes a backup destination as an argument.
3. Creates a timestamped `.tar.gz` archive.
4. Verifies that the archive was created successfully.
5. Displays the archive name and size.
6. Deletes backups older than 14 days.
7. Exits if the source directory does not exist.




---

# Task 3 – Crontab

## Check Existing Cron Jobs

```bash
crontab -l
```

## Cron Syntax

```text
* * * * * command
│ │ │ │ │
│ │ │ │ └── Day of week (0-7)
│ │ │ └──── Month (1-12)
│ │ └────── Day of month (1-31)
│ └──────── Hour (0-23)
└────────── Minute (0-59)
```

---

## 1. Log Rotation Every Day at 2 AM

```bash
0 2 * * * /home/ubuntu/scripts/log_rotate.sh /var/log/myapp
```

Explanation:

```text
0     = minute
2     = hour
*     = every day
*     = every month
*     = every day of week
```

---

## 2. Backup Every Sunday at 3 AM

```bash
0 3 * * 0 /home/ubuntu/scripts/backup.sh /home/ubuntu/data /home/ubuntu/backups
```

Here:

```text
0 = Sunday
```

---

## 3. Health Check Every 5 Minutes

```bash
*/5 * * * * /home/ubuntu/scripts/health_check.sh
```

The reference asks for these three cron entries as part of Task 3.


---

# What I Learned

1. I learned how to create timestamped `.tar.gz` backups using Shell Scripting.
2. I learned how to automate log rotation using `find`, `gzip`, and `rm`.
3. I learned how to use Crontab to schedule regular server maintenance tasks.

---

# Conclusion

Day 19 helped me apply Shell Scripting concepts to real-world Linux administration.

I created a backup script for automated server backups, a log rotation script for managing old logs that combines both operations.

Finally, I used Crontab to automate these tasks at scheduled times.


