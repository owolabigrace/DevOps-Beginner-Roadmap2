# DevOps-Beginner-Roadmap2

# Log Archive Tool

A simple Bash CLI tool that compresses and archives log files into a `.tar.gz` format for backup and storage purposes.

This project was built as part of a DevOps/Linux automation practice project.

---

# Features

* Accepts a log directory as a command-line argument
* Compresses `.log` files into a `.tar.gz` archive
* Stores archives in a dedicated directory
* Automatically generates timestamped archive names
* Logs archive history to a log file
* Displays archive size
* Counts archived log files
* Deletes archives older than 7 days

---

# Technologies Used

* Bash
* Linux Commands
* tar
* gzip
* find
* Git Bash

---

# Project Structure

```bash
log-archive/
├── log-archive.sh
├── archive_logs/
├── archive_history.log
└── logs/
```

---

# How It Works

The script:

1. Checks if the user supplied a directory
2. Verifies the directory exists
3. Creates an archive directory if needed
4. Finds `.log` files
5. Compresses them into a `.tar.gz` archive
6. Logs archive history
7. Deletes archives older than 7 days

---

# Usage

Run the script from the terminal:

```bash
./log-archive.sh <log-directory>
```

Example:

```bash
./log-archive.sh logs
```

---

# Example Output

```bash
[INFO] Starting archive process...
[INFO] Archive created successfully: archive_logs/logs_archive_20260527_143210.tar.gz
8.0K archive_logs/logs_archive_20260527_143210.tar.gz
[INFO] Total log files archived: 2
```

---

# Setup Instructions

## 1. Clone the Repository

```bash
git clone <your-repository-url>
```

## 2. Navigate Into the Project Directory

```bash
cd log-archive
```

## 3. Make the Script Executable

```bash
chmod +x log-archive.sh
```

## 4. Run the Script

```bash
./log-archive.sh logs
```

---

# Sample Test Logs

```bash
mkdir logs

echo "Server started" > logs/app.log
echo "Database connected" > logs/db.log
```

---

# Future Improvements

Possible upgrades for the project:

* Upload archives to AWS S3
* Add email notifications
* Schedule automatic backups with cron jobs
* Add colored terminal output
* Add compression statistics
* Add support for remote backup servers

---

# Skills Practiced

* Bash scripting
* Linux file management
* Automation
* Log management
* Compression and archiving
* Error handling
* DevOps fundamentals

---

# Author

owolabigrace

DevOps / Cloud Engineering Enthusiast 🚀

project URL : https://roadmap.sh/projects/log-archive-tool
