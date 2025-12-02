## dashboard
#!/bin/bash

green=$(tput setaf 2)
yellow=$(tput setaf 3)
red=$(tput setaf 1)
reset=$(tput sgr0)

echo "================================="
echo "        System Dashboard+        "
echo "================================="

# CPU Load
load=$(uptime | awk -F'load average:' '{print $2}' | cut -d',' -f1)
echo "[CPU Load] $load"

# Memory
echo "[Memory Info]"
free -h

# Disk
echo "[Disk Info]"
df -h | grep "/dev"

# Logged-in users
users=$(who | wc -l)
echo "[Logged-in Users] $users"

# Live mode
if [[ $1 == "--live" ]]; then
  while true; do
    clear
    echo "===== Live Mode ====="
    uptime
    free -h
    df -h | grep '/dev'
    sleep 1
  done
fi
