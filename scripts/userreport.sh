#!/bin/bash

echo "================================="
echo "       USER REPORT"
echo "================================="

printf "%-20s %-6s %-25s %-20s\n" "User" "UID" "Home" "Shell"
echo "---------------------------------------------------------------------"

while IFS=: read -r user pass uid gid desc home shell; do
    if [[ "$uid" -ge 1000 || "$uid" -eq 0 ]]; then
        printf "%-20s %-6s %-25s %-20s\n" "$user" "$uid" "$home" "$shell"
    fi
done < /etc/passwd

echo
echo "Anzahl Benutzerkonten: $(wc -l < /etc/passwd)"