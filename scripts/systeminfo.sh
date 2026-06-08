#!/bin/bash

LOGFILE="logs/toolkit.log"

echo
echo "================================="
echo "      SYSTEMINFORMATIONEN"
echo "================================="

echo "Hostname: $(hostname)"
echo "Benutzer: $(whoami)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "IP-Adresse: $(hostname -I)"

echo
echo "Arbeitsspeicher:"
free -h

echo
echo "Festplattenbelegung:"
df -h /

echo

echo "$(date '+%Y-%m-%d %H:%M:%S') Systeminformationen abgefragt" >> "$LOGFILE"
