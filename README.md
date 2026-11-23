
# Linux System Administration & Automation Toolkit

A Bash-based project that automates common Linux system administration tasks.

## Features

- System Monitoring: Displays CPU, memory and disk usage.
- Backup Automation: Creates compressed backups of important files.
- Backup Restoration: Restores files from the latest backup.
- Log Analysis: Counts INFO, WARNING and ERROR messages.
- Dashboard: Provides a menu-driven interface to execute all operations.

## Project Structure

```text
Lab7_Capstone/
├── monitor.sh
├── backup.sh
├── log_analyzer.sh
├── dashboard.sh
├── README.md
├── important_files/
├── sample_logs/
├── backups/
└── restored_files/
```

## Requirements

- Linux operating system or WSL
- Bash shell
- tar, grep and standard Linux utilities

## Execution

Clone or download the project, open its directory and run:

```bash
chmod +x *.sh
./dashboard.sh
```

Follow the displayed menu to perform the required operations.

To restore the latest backup directly:

```bash
./backup.sh restore
```

## Author

Vaibhav
