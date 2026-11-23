#!/bin/bash

# Linux Backup and Restoration Script

SOURCE="important_files"
DESTINATION="backups"

# Restore the latest backup when restore argument is provided
if [ "$1" = "restore" ]; then

    # Find the latest backup archive
    LATEST_BACKUP=$(ls -t "$DESTINATION"/backup_*.tar.gz 2>/dev/null | head -n 1)

    if [ -z "$LATEST_BACKUP" ]; then
        echo "Error: No backup file found."
        exit 1
    fi

    # Create restoration directory
    mkdir -p restored_files

    # Extract backup
    tar -xzf "$LATEST_BACKUP" -C restored_files

    echo "Backup restored successfully."
    echo "Restored location: restored_files/"

else

    # Check whether source directory exists
    if [ -d "$SOURCE" ]; then

        TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
        BACKUP_FILE="$DESTINATION/backup_$TIMESTAMP.tar.gz"

        tar -czf "$BACKUP_FILE" "$SOURCE"

        echo "Backup created successfully."
        echo "Backup file: $BACKUP_FILE"

    else
        echo "Error: Source directory does not exist."
        exit 1
    fi

fi
