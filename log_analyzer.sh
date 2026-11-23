#!/bin/bash

# Linux Log Analysis Script

LOG_FILE="${1:-sample_logs/system.log}"

# Check whether log file exists
if [ ! -f "$LOG_FILE" ]; then
    echo "Error: Log file does not exist."
    exit 1
fi

# Check whether log file is empty
if [ ! -s "$LOG_FILE" ]; then
    echo "Error: Log file is empty."
    exit 1
fi

echo "=================================="
echo "       LOG ANALYSIS REPORT"
echo "=================================="

total=$(wc -l < "$LOG_FILE")
info=$(grep -c "INFO" "$LOG_FILE")
warning=$(grep -c "WARNING" "$LOG_FILE")
error=$(grep -c "ERROR" "$LOG_FILE")

echo "Total Log Entries: $total"
echo "INFO Messages: $info"
echo "WARNING Messages: $warning"
echo "ERROR Messages: $error"

echo "=================================="
echo "     LOG ANALYSIS COMPLETED"
echo "=================================="
