#!/bin/bash

# Name   : Rishi Kumar Jha
# Email  :rishikumarjha005@gmail.com
# Course : Cloud & DevOps

echo "Create user"
sudo useradd rishi

echo "Set password"
sudo passwd rishi

echo "Create group"
sudo groupadd cloud

echo "Add user to group"
sudo usermod -aG cloud rishi

echo "User details"
id rishi

echo "Login details"
last rishi | head -2

echo "Active users"
who
