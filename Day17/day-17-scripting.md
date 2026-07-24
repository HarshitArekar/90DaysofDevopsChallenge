# Day 17 - Bash Scripting: Loops, Arguments & Error Handling

Today I practiced writing more practical Bash scripts by using loops, passing command-line arguments, checking package status, and handling script errors. These concepts are commonly used in Linux administration and DevOps automation.

---

# Task 1: Working with For Loop

### Script: `for_loop.sh`

**Purpose**
- Store a list of fruits.
- Display each fruit one by one using a `for` loop.

[Here is the script for_loop.sh](scripts/for_loop.sh)

### Output

![for_loop](images/for_loop.png)

---

### Script: `count.sh`

**Purpose**
- Print numbers from 1 to 10 using a `for` loop.

[Here is the script count.sh](scripts/count.sh)

### Output

![count](images/02-count.png)


---

# Task 2: Using While Loop

### Script: `countdown.sh`

**Purpose**
- Read a number from the user.
- Continue decreasing the value until it reaches zero.
- Display a completion message.

### Sample Output
```
Enter a number: 5

5
4
3
2
1
0

Done!
```

---

# Task 3: Command-Line Arguments

### Script: `greet.sh`

**Purpose**
- Receive a username as input.
- Display a greeting message.
- Show a usage message if no argument is supplied.

### Example
```
$ ./greet.sh Jyoti

Hello, Jyoti!
```

---

### Script: `args_demo.sh`

**Purpose**
- Display the script filename.
- Show the total number of arguments.
- Print every argument passed to the script.

### Example
```
Script Name : ./args_demo.sh
Total Arguments : 3
Arguments : Linux DevOps AWS
```

---

# Task 4: Package Installation Script

### Script: `install_packages.sh`

**Purpose**
- Verify whether `nginx`, `curl`, and `wget` are installed.
- Install only the missing packages.
- Display the installation status.
- Ensure the script runs only with root privileges.

### Expected Output
```
nginx : Installed
curl : Installed
wget : Installed
```

---

# Task 5: Error Handling

### Script: `safe_script.sh`

**Purpose**
- Create a working directory.
- Move into the directory.
- Create a sample file.
- Stop execution if a critical error occurs.

### Example Output
```
Directory created successfully.
demo.txt created.
Script completed successfully.
```

---

# Key Takeaways

- Learned to automate repetitive tasks with **for** and **while** loops.
- Understood how Bash arguments (`$0`, `$1`, `$#`, `$@`) work.
- Practiced checking software installation status before installing packages.
- Used `set -e` and `||` for basic error handling.
- Improved Bash scripting skills for DevOps automation.

---

# Conclusion

Day 17 strengthened my understanding of Bash scripting by combining loops, command-line arguments, package management, and error handling. These techniques help build reliable automation scripts for Linux and DevOps environments.

**#90DaysOfDevOps 🚀**
