# Linux Toolkit – Administration & Git Wochenprojekt

## 📌 Projektbeschreibung

Das Linux Toolkit ist eine Sammlung von Bash-Skripten zur Systemadministration unter Linux.
Es wurde im Rahmen eines Wochenprojekts entwickelt und demonstriert grundlegende Fähigkeiten in:

* Linux-Systemadministration
* Bash-Scripting
* Git-Versionierung
* Strukturierter Softwareentwicklung

Das Toolkit bietet Funktionen zur Systemanalyse, Benutzerverwaltung sowie Backup- und Restore-Operationen.

---

## 📁 Verzeichnisstruktur

```
linux-toolkit/
├── scripts/
│   ├── systeminfo.sh
│   ├── diskcheck.sh
│   ├── userreport.sh
│   ├── backup.sh
│   ├── restore.sh
│   └── toolkit.sh
├── logs/
├── backup/
├── docs/
├── README.md
└── .gitignore
```

---

## ⚙️ Installation

Repository klonen:

```bash
git clone <repository-url>
cd linux-toolkit
```

Skripte ausführbar machen:

```bash
chmod +x scripts/*.sh
```

---

## 🚀 Nutzung

### Start des Hauptmenüs

```bash
./scripts/toolkit.sh
```

---

## 🧭 Funktionen der Skripte

### 🖥 Systeminformationen

Zeigt grundlegende Systemdaten an:

```bash
./scripts/systeminfo.sh
```

Enthält:

* Hostname
* Benutzername
* Kernel-Version
* Uptime
* IP-Adresse
* RAM- und Festplatteninformationen

---

### 💾 Speicherprüfung

Analysiert die Festplattenauslastung:

```bash
./scripts/diskcheck.sh
```

* Anzeige aller gemounteten Dateisysteme
* Warnung bei hoher Auslastung (≥ 80%)

---

### 👤 Benutzeranalyse

Auswertung von `/etc/passwd`:

```bash
./scripts/userreport.sh
```

* Benutzername
* UID
* Home-Verzeichnis
* Login-Shell
* Anzahl aller Benutzerkonten

---

### 📦 Backup-System

Erstellt komprimierte Backups eines Verzeichnisses:

```bash
./scripts/backup.sh <verzeichnis>
```

Beispiel:

```bash
./scripts/backup.sh scripts
```

* erstellt `.tar.gz` Archive
* speichert im `backup/` Ordner
* nutzt Zeitstempel im Dateinamen

---

### ♻ Restore-System

Stellt Backups wieder her:

```bash
./scripts/restore.sh
```

* interaktive Auswahl vorhandener Backups
* Restore in separates Zielverzeichnis
* verhindert Überschreiben bestehender Daten

---

## 🧠 Logging

Alle wichtigen Aktionen werden protokolliert in:

```
logs/toolkit.log
```

Beispiel:

```
2026-06-08 10:45:00 Backup erstellt: scripts
2026-06-08 11:00:00 Restore durchgeführt: backup_scripts_2026-06-08_1305.tar.gz
```

---

## 🧰 Verwendete Technologien

* Bash
* GNU Core Utilities (df, awk, tar, etc.)
* Git
* Linux Filesystem Struktur

---

## 📦 Git Workflow

Das Projekt wurde mit strukturierter Versionskontrolle entwickelt:

* Jeder Funktionsblock entspricht einem eigenen Commit
* Keine Sammel-Commits
* Nachvollziehbare Entwicklungsschritte
* Saubere Trennung von Features

---

## 🚫 Ausschlüsse (.gitignore)

Folgende Dateien werden nicht versioniert:

* `logs/*.log`
* `backup/*.tar.gz`
* temporäre Dateien

---

## 👨‍💻 Autor

Linux Administration Wochenprojekt
Erstellt im Rahmen einer strukturierten Linux- & Git-Lernumgebung

---

## 🏁 Projektstatus

✔ alle Aufgaben umgesetzt
✔ alle Skripte funktionsfähig
✔ Git-Historie strukturiert
✔ Menüsystem integriert
✔ Backup & Restore implementiert
✔ Logging vorhanden

---

## 📌 Hinweis

Dieses Projekt wurde bewusst modular aufgebaut, um:

* Erweiterbarkeit zu ermöglichen
* saubere Linux-Scripting-Praktiken zu demonstrieren
* realistische Admin-Workflows abzubilden

