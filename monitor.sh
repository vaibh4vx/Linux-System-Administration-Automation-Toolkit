#!/bin/bash

# Linux System Monitoring Script

echo "=================================="
echo "       SYSTEM MONITORING"
echo "=================================="

# Display current date and time
echo ""
echo "Date and Time:"
date

# Display CPU information
echo ""
echo "CPU Information:"
top -bn1 | grep "Cpu(s)"

# Display memory usage
echo ""
echo "Memory Usage:"
free -h

# Display disk usage
echo ""
echo "Disk Usage:"
df -h

echo ""
echo "=================================="
echo "   SYSTEM MONITORING COMPLETED"
echo "=================================="
