#!/bin/bash
# network_check.sh - Simple network issue checker

HOST="8.8.8.8"

echo "Checking network connectivity to $HOST..."

ping -c 4 $HOST > /dev/null 2>&1

if [ $? -eq 0 ]
then
    echo "✅ Network is up. Connection successful."
else
    echo "❌ Network issue detected. Unable to reach $HOST."
fi
