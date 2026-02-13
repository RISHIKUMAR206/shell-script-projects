About Task:📊 This is a System Monitoring Shell Script that checks CPU, RAM, and Disk usage.
If any resource usage goes above 75%, it generates an alert message.
This script is created for practicing Linux commands and basic shell scripting concepts.



#!/bin/bash

LIMIT=75

# CPU Usage
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8}')
CPU=${CPU%.*}

# RAM Usage
RAM=$(free | grep Mem | awk '{print $3/$2 * 100}')
RAM=${RAM%.*}

# Disk Usage
DISK=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

echo "CPU Usage  : $CPU%"
echo "RAM Usage  : $RAM%"
echo "Disk Usage : $DISK%"

# CPU Alert
if [ $CPU -ge $LIMIT ]; then
  echo "ALERT: CPU usage is above 75%"
fi

# RAM Alert
if [ $RAM -ge $LIMIT ]; then
  echo "ALERT: RAM usage is above 75%"
fi

# Disk Alert
if [ $DISK -ge $LIMIT ]; then
  echo "ALERT: Disk usage is above 75%"
fi


