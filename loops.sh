#!/bin/bash

# Using a while loop to check CPU usage every few seconds:

# Use case: System administrators can monitor CPU stats in real-time

while true
do
    top -b -n1 | grep "Cpu(s)"
    sleep 10
done

# Using a for loop to rename .txt files:
# Use case: Quickly appending _backup to all .txt files.
for file in *.txt
do
    mv "$file" "${file%.txt}_backup.txt"
done

# Checking Internet Connection
# Using a while loop to retry ping until successful
#Use case: Automatically waits for internet before proceeding

while ! ping -c1 google.com &>/dev/null
do
    echo "No internet connection. Retrying..."
    sleep 5
done
echo "Internet is back!"

# Automated User Creation
# Loop through a list of usernames and create users:
# Use case: Quickly onboarding multiple users on a system.

for user in alice bob charlie
do
    sudo useradd $user
    echo "$user:password" | sudo chpasswd
done

# Daily Log Archiving
# Using a for loop with cron to archive logs daily:
# Use case: Compressing old logs to save disk spaced

for log in /var/log/*.log
do
    gzip "$log"
done

