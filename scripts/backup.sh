#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

BACKUP_DIR="$PROJECT_ROOT/backup"
LOGFILE="$PROJECT_ROOT/logs/toolkit.log"

# Parameter prüfen
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

SOURCE=$1

# Existenz prüfen
if [ ! -d "$SOURCE" ]; then
    echo "ERROR: Directory does not exist"
    exit 1
fi

# Backup-Ziel vorbereiten
if [[ ! -d $BACKUP_DIR ]]; then
    mkdir -p "$BACKUP_DIR"
fi

# Timestamp
TIMESTAMP=$(date '+%Y-%m-%d_%H%M')

# Basename für sauberen Dateinamen
BASENAME=$(basename "$SOURCE")

BACKUP_FILE="$BACKUP_DIR/backup_${BASENAME}_${TIMESTAMP}.tar.gz"

# Backup erstellen
tar -czf "$BACKUP_FILE" "$SOURCE"

# Logging
echo "$(date '+%Y-%m-%d %H:%M:%S') Backup erstellt: $BACKUP_FILE" >> "$LOGFILE"

echo "Backup created: $BACKUP_FILE"