# Day 17 – Shell Scripting: Loops, Arguments & Error Handling

Today's I Learn how to use loops, command-line arguments, package installation scripts, and basic error handling in Bash.

---

# Task 1 – For Loop

## Script 1: `for_loop.sh`

```bash
#!/bin/bash

for fruit in Apple Mango Banana Orange Grapes
do
    echo "$fruit"
done
```

### Output


---

## Script 2: `count.sh`

```bash
#!/bin/bash

for i in {1..10}
do
    echo "$i"
done
```

### Output

```text
1
2
3
4
5
6
7
8
9
10
```

---

# Task 2 – While Loop

## Script: `countdown.sh`

```bash
#!/bin/bash

echo "Enter a number:"
read num

while [ "$num" -ge 0 ]
do
    echo "$num"
    num=$((num-1))
done

echo "Done!"
```

### Output

```text
Enter a number:
5

5
4
3
2
1
0
Done!
```

---

# Task 3 – Command-Line Arguments

## Script 1: `greet.sh`

```bash
#!/bin/bash

if [ $# -eq 0 ]
then
    echo "Usage: ./greet.sh <name>"
else
    echo "Hello, $1!"
fi
```

### Output (Without Argument)

```text
$ ./greet.sh
Usage: ./greet.sh <name>
```

### Output (With Argument)

```text
$ ./greet.sh Jyoti
Hello, Jyoti!
```

---

## Script 2: `args_demo.sh`

```bash
#!/bin/bash

echo "Script Name      : $0"
echo "Total Arguments  : $#"
echo "All Arguments    : $@"
```

### Output

```text
$ ./args_demo.sh Linux DevOps AWS

Script Name      : ./args_demo.sh
Total Arguments  : 3
All Arguments    : Linux DevOps AWS
```

---

# Task 4 – Install Packages via Script

## Script: `install_packages.sh`

```bash
#!/bin/bash

if [ "$EUID" -ne 0 ]
then
    echo "Run this script as root."
    exit 1
fi

packages=("nginx" "curl" "wget")

for pkg in "${packages[@]}"
do
    if dpkg -s "$pkg" >/dev/null 2>&1
    then
        echo "$pkg is already installed."
    else
        echo "Installing $pkg..."
        apt update
        apt install -y "$pkg"
    fi
done
```

### Sample Output

```text
nginx is already installed.
curl is already installed.
wget is already installed.
```

---

# Task 5 – Error Handling

## Script: `safe_script.sh`

```bash
#!/bin/bash

set -e

mkdir /tmp/devops-test || echo "Directory already exists"

cd /tmp/devops-test || {
    echo "Cannot enter directory"
    exit 1
}

touch demo.txt

echo "Script completed successfully."
```

### Output

```text
Directory already exists
Script completed successfully.
```

---

# 📚 What I Learned

- Learned to automate repetitive tasks using **for** and **while** loops.
- Understood how **command-line arguments** (`$0`, `$1`, `$#`, `$@`) work.
- Learned **basic error handling** using `set -e`, `||`, and root user verification.

---

# ✅ Conclusion

Day 17 helped me understand how to write more practical Bash scripts using loops, arguments, package management, and error handling. These concepts are essential for Linux automation and real-world DevOps tasks.

---

**#90DaysOfDevOps | Day 17 Completed 🚀**
