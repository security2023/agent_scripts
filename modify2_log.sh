#!/bin/bash
#Description: to delete log with .tar extention and files that are 30 days old.
#Author: Marcelle
#Date: june 2023

LOG_DIR="/var/log"
DAYS_THRESHOLD=30

find "$LOG_DIR" -type f -name "*.tar" -mtime +"$DAYS_THRESHOLD" -exec rm {} \;
