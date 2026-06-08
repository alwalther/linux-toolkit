#!/bin/bash

echo "================================="
echo "      SYSTEMINFORMATIONEN"
echo "================================="

echo "Hostname: $(hostname)"
echo "Benutzer: $(whoami)"
echo "Kernel: $(uname -r)"
echo "Uptime: $(uptime -p)"
echo "IP-Adresse: $(hostname -I)"

