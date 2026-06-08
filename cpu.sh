#!/bin/bash
# cpu_alert.sh - Send email if CPU usage exceeds 90%

# Get CPU usage (average over 1 minute)
cpu_usage=$(top -bn1 | grep "Cpu(s)" | awk '{print $2 + $4}')

# Round CPU usage to integer
cpu_usage_int=$(printf "%.0f" $cpu_usage)

if [ $cpu_usage_int -gt 90 ]
then
    echo "CPU usage is at $cpu_usage_int%. Sending alert email..."
    echo "Alert: CPU usage has reached $cpu_usage_int%" | mail -s "CPU Alert" kubraa7892@gmail.com
else
