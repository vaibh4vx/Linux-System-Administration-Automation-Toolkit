#!/bin/bash

# Linux System Administration Dashboard

while true
do
    echo ""
    echo "=================================="
    echo "   LINUX ADMINISTRATION TOOLKIT"
    echo "=================================="
    echo "1. System Monitoring"
    echo "2. Backup Creation"
    echo "3. Log Analysis"
    echo "4. Backup Restoration"
    echo "5. Exit"
    echo "=================================="

    read -p "Enter your choice: " choice

    case $choice in

        1)
            echo ""
            echo "Starting System Monitoring..."
            ./monitor.sh
            ;;

        2)
            echo ""
            echo "Starting Backup Creation..."
            ./backup.sh
            ;;

        3)
            echo ""
            echo "Starting Log Analysis..."
            ./log_analyzer.sh
            ;;

        4)
            echo ""
            echo "Starting Backup Restoration..."
            ./backup.sh restore
            ;;

        5)
            echo "Exiting Dashboard. Thank you!"
            break
            ;;

        *)
            echo "Invalid choice. Please try again."
            ;;

    esac
done
