About Task:👤🔐 This shell script demonstrates Linux user and group management.
It creates a user, sets a password, creates a group, adds the user to that group, and displays user details.
It is created to practice basic Linux system administration commands. 🖥️⚙️

# Name   : Rishi Kumar Jha
# Email  :rishikumarjha005@gmail.com
# Course : Cloud & DevOps


#!/bin/bash

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
