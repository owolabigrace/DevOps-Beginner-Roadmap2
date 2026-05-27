#!/bin/bash

# Check if user provided a directory
if [ $# -eq 0 ]; then
    echo "Usage: ./log-archive.sh <log-directory>"
    exit 1
fi

# Store user argument
LOG_DIR=$1

# Check if directory exists
if [ ! -d "$LOG_DIR" ]; then
    echo "[ERROR] Directory does not exist."
    exit 1
fi

# Create archive directory
ARCHIVE_DIR="archive_logs"
mkdir -p "$ARCHIVE_DIR"

# Generate timestamp
TIMESTAMP=$(date +%Y%m%d_%H%M%S)

# Archive filename
ARCHIVE_NAME="logs_archive_${TIMESTAMP}.tar.gz"

echo "[INFO] Starting archive process..."

# Count .log files
FILE_COUNT=$(find "$LOG_DIR" -name "*.log" | wc -l)

# Create compressed archive
find "$LOG_DIR" -name "*.log" | tar -czf "$ARCHIVE_DIR/$ARCHIVE_NAME" -T -

# Check archive status
if [ $? -eq 0 ]; then
    echo "[INFO] Archive created successfully: $ARCHIVE_DIR/$ARCHIVE_NAME"

    # Show archive size
    du -h "$ARCHIVE_DIR/$ARCHIVE_NAME"

    # Show total files archived
    echo "[INFO] Total log files archived: $FILE_COUNT"

    # Log archive history
    echo "[$(date)] Archived $LOG_DIR into $ARCHIVE_NAME" >> archive_history.log

    # Delete archives older than 7 days
    find "$ARCHIVE_DIR" -type f -mtime +7 -delete

else
    echo "[ERROR] Archive failed"
fi