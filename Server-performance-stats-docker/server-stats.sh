#!/bin/sh

echo "================== SERVER PERFORMANCE STATS =================="

# CPU usage
echo "\n🔹 Total CPU Usage:"
top -bn1 | grep "Cpu(s)" | awk '{print "CPU Usage: " 100 - $8 "% (Used), " $8 "% (Idle)"}'

# Memory usage
echo "\n🔹 Memory Usage:"
free -h | awk 'NR==2{printf "Used: %s, Free: %s, Total: %s, Usage: %.2f%%\n", $3, $4, $2, ($3/$2)*100}'

# Disk usage
echo "\n🔹 Disk Usage:"
df -h --total | grep total | awk '{printf "Used: %s, Free: %s, Total: %s, Usage: %s\n", $3, $4, $2, $5}'

# Top 5 CPU consuming processes
echo "\n🔹 Top 5 Processes by CPU Usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%cpu | head -n 6

# Top 5 Memory consuming processes
echo "\n🔹 Top 5 Processes by Memory Usage:"
ps -eo pid,comm,%cpu,%mem --sort=-%mem | head -n 6

# File Tree
echo "\n🔹 File Tree (Top Level - /app):"
if command -v tree > /dev/null; then
    tree -L 2 /app
else
    echo "tree not found, using find instead:"
    find /app -maxdepth 2 -type d
fi

echo "=============================================================="
