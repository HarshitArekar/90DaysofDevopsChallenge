#!/bin/bash

set -euo pipefail

sys_info() {
    echo "=============== HOST NAME & SYS INFO =================="
    echo " Hostname : $(hostname) "
    echo " kernal : $(uname -r)"
    echo " OS       : $(grep PRETTY_NAME /etc/os-release | cut -d= -f2 | tr -d '"')"
}

sys_uptime() { 
        echo "=============== SYSTEM UPTIME =================="
        echo "Uptime: $(uptime -p)"

}

disk_usage() {
        echo "=============== Storage Usage  =================="
        df -h | awk 'NR==2 {print $4 } '
        df -h | sort -hr -k2 | head -5
}

mem_usage() {
        echo "=============== Memory Usage  =================="
        echo "Memory Usage: $(free -h | awk 'NR==2 {print "Total: " $2, "Available: " $7, "Used: " $3}')"

}

cpu_consuming_processes() {
    echo -e "\n=============== CPU-CONSUMING PROCESSES ==============="
    ps -eo pid,user,comm,%cpu,%mem --sort=-%cpu | head -n 6
}
main() {
    sys_info
    sys_uptime
    disk_usage
    mem_usage
    }

main
                                                                                                                                                 1,1           Top
