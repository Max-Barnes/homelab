#!/bin/bash

# You are required to write a script server-stats.sh that can analyse basic server performance stats. 
# You should be able to run the script on any Linux server and it should give you the following stats:

echo
# Total CPU usage (this gives cpu and memory usage)
echo "Total CPU Usage"
# ps aux with no headers | awk the sum of the third column and print sum
# wrap in echo so i can add the % symbol
echo "$(ps aux --no-headers | awk '{sum += $3} END {print sum}')" %
echo
# Total memory usage (Free vs Used including percentage)
echo "Total Memory Usage"
# same as above just use $4 for fourth column
echo "$(ps aux --no-headers | awk '{sum += $4} END {print sum}')" %
echo
# Total disk usage (Free vs Used including percentage)
echo "Total Disk Usage"
echo
df -hl /
echo
# Top 5 processes by CPU usage
echo "Top 5 Processes by CPU"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | awk '$2 != "ps"'
echo
# Top 5 processes by memory usage
echo "Top 5 Processes by Memory usage"
ps -eo pid,comm,%cpu --sort=-%mem | head -n 6 | awk '$2 != "ps"'
echo
# Logged in Users
echo "Uptime & Logged in Users"
uptime -p
who
# Stretch goal: enable certain combinations based on options (-flags)

