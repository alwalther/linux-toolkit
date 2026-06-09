#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
PROJECT_ROOT="$(dirname "$SCRIPT_DIR")"

BACKUP_DIR="$PROJECT_ROOT/backup"
LOGFILE="$PROJECT_ROOT/logs/toolkit.log"

# Prüfen ob Backups existieren
if [ ! -d "$BACKUP_DIR" ] || [ -z "$(ls -A "$BACKUP_DIR")" ]; then
    echo "Keine Backups gefunden."
    exit 1
fi

echo "================================="
echo "       BACKUP RESTORE"
echo "================================="

echo "Verfügbare Backups:"
echo

PS3="Wähle ein Backup: "

select BACKUP_FILE in "$BACKUP_DIR"/*.tar.gz; do
    if [ -n "$BACKUP_FILE" ]; then
        break
    else
        echo "Ungültige Auswahl"
    fi
done

echo
read -p "Zielverzeichnis: " TARGET_DIR
TARGET_DIR="${TARGET_DIR/#\~/$HOME}"

if [[ ! -d $TARGET_DIR ]]; then
    mkdir -p "$TARGET_DIR"
fi

echo "Backup wird wiederhergestellt..."

tar -xzf "$BACKUP_FILE" -C "$TARGET_DIR"

echo "$(date '+%Y-%m-%d %H:%M:%S') Restore durchgeführt: $BACKUP_FILE -> $TARGET_DIR" >> "$LOGFILE"

echo "Restore abgeschlossen in: $TARGET_DIR"