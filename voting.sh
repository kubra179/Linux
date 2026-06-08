#!/bin/bash
# voting.sh - Check voting eligibility based on age

echo "Enter your age:"
read age

if [ $age -ge 18 ]
then
    echo "✅ You are eligible to vote."
else
    echo
