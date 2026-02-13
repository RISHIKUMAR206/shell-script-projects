About Task:🖥️ This is a basic system information shell script that displays user details, date & time, uptime, last login, disk space, RAM usage, and running processes.
It is created to practice Linux system commands and Bash scripting basics.


#!/bin/bash

echo "--------------------------------"
echo "Welcome $(whoami)"
echo "--------------------------------"

echo "Date and Time:"
date

echo ""
echo "System Uptime:"
uptime

echo ""
echo "Last Login:"
last | head -n 2

echo ""
echo "Disk Space:"
df -h

echo ""
echo "RAM Usage:"
free -h

echo ""
echo "Running Processes:"
ps aux | head

