# Day 08 – Cloud Server Setup: Docker, Nginx & Web Deployment

Today task is to deploy a cloud server, connect to it using SSH, install Docker and Nginx, configure security groups, verify web access, and collect Nginx logs. This exercise provides hands-on experience with real-world DevOps server deployment.
<br>
<br>

# Part 1: Launch Cloud Instance & SSH Access

## Step 1: Launch an EC2 Instance

Launch an Ubuntu EC2 instance from the AWS Management Console.


## Step 2: Connect to the Server via SSH

### Command

```bash
ssh -i your-key.pem ubuntu@<your-public-ip>
```

### Why

Connect securely to the cloud server using SSH.



---
<br>

# Part 2: Install Docker & Nginx

## Step 1: Update the System

### Command

```bash
sudo apt update
sudo apt upgrade -y
```

### Why

Update package information and install the latest security updates.


## Step 2: Install Docker

### Command

```bash
sudo apt install docker.io -y
```

### Why

Install Docker so containers can be deployed on the server.



## Step 3: Verify Docker Installation

### Command

```bash
docker --version
```

### Why

Verify Docker was installed successfully.



## Step 4: Install Nginx

### Command

```bash
sudo apt install nginx -y
```

### Why

Install the Nginx web server.



## Step 5: Verify Nginx Service

### Command

```bash
sudo systemctl status nginx
```

### Why

Ensure the Nginx service is active and running.



---
<br>

# Part 3: Configure Security Group

## Step 1: Allow HTTP Traffic

Open **Port 80 (HTTP)** in the EC2 Security Group.

### Why

Allows users to access the web server from a browser.



## Step 2: Test Web Access

Open your browser:

```text
http://<your-public-ip>
```

The Nginx Welcome Page should appear.


## Create Custom Web Page

```bash
cd /var/www/html
echo "Hello, Harshit Arekar Welcome to nginx!
The nginx web server is successfully installed and working" | sudo tee index.nginx-debian.htmlcd
```

Modified the default Nginx page with my own content.


---
<br>


# Part 4: Extract Nginx Logs

## Step 1: View Nginx Access Logs

### Command

```bash
sudo cat /var/log/nginx/access.log
```

### Why

Display requests received by the Nginx web server.



## Step 2: Save Logs to a File

### Command

```bash
cp /var/log/nginx/access.log ~/nginx-logs.txt
```

### Why

Create a copy of the access log in your home directory for submission.



## Step 3: Verify the Log File

### Command

```bash
cat ~/nginx-logs.txt
```

### Why

Verify the log file contains the copied Nginx logs.



## Step 4: Download the Log File (Local Machine)

### AWS

```bash
scp -i your-key.pem ubuntu@<your-public-ip>:~/nginx-logs.txt .
```

### Why

Copy the log file from the cloud server to your local computer.


---
<br>

## Screenshots

1. Launch Cloud Instance & SSH Access(`ssh-connection.png`)
2. Install Docker & Nginx (`nginx-install.png`)
3. Nginx Welcome Page  (`nginx-webpage.png`)
4. Extract Nginx Logs (`nginx-logs.png`)

---
<br>

# Challenges Faced

* Connecting to the EC2 instance using SSH.
* Opening Port 80 in the Security Group.
* Verifying the Nginx service.
* Understanding where Nginx stores its log files.

---
<br>
# What I Learned

* How to launch an AWS EC2 instance.
* How to connect to a remote server using SSH.
* How to install Nginx.
* How to manage services using systemctl.
* How to configure Security Groups.
* How to access and copy Nginx log files.
* Basic cloud server administration.



