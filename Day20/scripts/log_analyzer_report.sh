#!bin/bash

log_file=$1
report_date=$(date +"%Y-%m-%d")
report_file="log_report_${report_date}.txt"

total_lines=$(wc -l < "$log_file")

error_count=$(grep -Ei 'ERROR|Failed' "$log_file" | wc -l)

echo "Log Analysis Report" > "$report_file"
echo "===================" >> "$report_file"
echo "Date of Analysis : $(date)" >>"$report_file"
echo "log file : $log_file " >> "$report_file"
echo "Total Lines Processed: $total_lines" >> "$report_file"
echo "Total Error count :$error_count " >> "$report_file"
# Top 5 Error Messages
echo "Top 5 Error Messages :" >> "$report_file"

error=$(grep "ERROR" "$log_file" | \
sed 's/.*ERROR //' | \
sort | uniq -c | sort -nr | head -5)

echo "$error" >> "$report_file"

echo "" >> "$report_file"

# Critical Events
echo "--- Critical Events ---" >> "$report_file"

critical=$(grep -n "CRITICAL" "$log_file")

echo "$critical" >> "$report_file"

echo "" >> "$report_file"

echo "Report generated successfully: $report_file"
