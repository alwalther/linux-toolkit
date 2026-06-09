#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

while true; do
    clear

    echo "====================================="
    echo "       Linux Admin Toolkit"
    echo "====================================="
    echo
    echo "1) Systeminformationen"
    echo "2) Festplattenprüfung"
    echo "3) Benutzerreport"
    echo "4) Backup erstellen"
    echo "5) Backup wiederherstellen"
    echo "0) Beenden"
    echo

    read -rp "Auswahl: " choice

    case "$choice" in
        1)
            "$SCRIPT_DIR/systeminfo.sh"
            ;;
        2)
            "$SCRIPT_DIR/diskcheck.sh"
            ;;
        3)
            "$SCRIPT_DIR/userreport.sh"
            ;;
        4)
            read -erp "Zu sicherndes Verzeichnis: " SOURCE_DIR
            SOURCE_DIR=${SOURCE_DIR/\~/$HOME}
            "$SCRIPT_DIR/backup.sh" "$SOURCE_DIR"
            ;;
        5)
            "$SCRIPT_DIR/restore.sh"
            ;;
        0)
            echo "Programm beendet."
            exit 0
            ;;
        *)
            echo "Ungültige Auswahl."
            ;;
    esac

    echo
    read -rp "Enter drücken zum Fortfahren..."
done