#!/bin/bash
# Log File Analyzer
# Accept log file as input
log_file="$1"
# Count total number of requests
total_requests=$(wc -l < "$log_file")
# Determine number of unique IP addresses
unique_ips=$(awk '{print $1}' "$log_file" | sort -u | wc -l)
# Identify top 5 most frequent IP addresses
top_ips=$(awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr | head -5)
# Calculate total size of data transferred
total_size=$(awk '{sum += $10} END {print sum}' "$log_file")
# Generate summary report
echo "Log File Analysis Report" > analysis_report.txt
echo "-------------------------" >> analysis_report.txt
echo "Total Requests: $total_requests" >> analysis_report.txt
echo "Unique IP Addresses: $unique_ips" >> analysis_report.txt
echo "Top 5 IP Addresses:" >> analysis_report.txt
echo "$top_ips" >> analysis_report.txt
echo "Total Size of Data Transferred: $total_size bytes" >> analysis_report.txt
echo "Report generated on: $(date)" >> analysis_report.txt
