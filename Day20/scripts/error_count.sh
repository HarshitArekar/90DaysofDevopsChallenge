#!/bin/bash


if [[ $# -eq 0 ]]; then
        echo "error please proivde file path"
        echo "Usage ./script.sh <file path>"
        exit 1
fi

#store log file path

log_file=$1

#check if file exits or not 

if [[ ! -f $log_file ]]; then
        echo " error: log file doesn't exist $log_file"
fi

echo " log file found $log_file"  

# how many lines in a log file indicate a problem

error_count=$( grep -Ei 'ERROR|Failed' "$log_file" | wc -l)
echo "Total error count: $error_count "
