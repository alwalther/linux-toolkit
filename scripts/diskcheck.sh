#!/bin/bash

LOGFILE="logs/toolkit.log"

echo "================================="
echo "        DISK CHECK"
echo "================================="

df -h | head -n 1
df -h | tail -n +2 | grep "^/dev/"

echo

df -h | tail -n +2 | grep "^/dev/" | while read -r fs size used avail use mount; do

    # Prozentzeichen sicher entfernen
    percent=$(echo "$use" | sed 's/%//g')

    # Nur prüfen wenn Zahl wirklich existiert
    if [[ "$percent" =~ ^[0-9]+$ ]] && (( percent >= 80 )); then
        echo "WARNUNG: $mount ist zu $percent% belegt."
    fi

done

echo "$(date '+%Y-%m-%d %H:%M:%S') Diskcheck ausgeführt" >> "$LOGFILE"
