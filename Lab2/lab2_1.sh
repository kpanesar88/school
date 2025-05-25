#!/bin/bash
current_hour=$(date +%H)
current_minute=$(date +%M)
current_second=$(date +%S)
current_day=$(date +%A)
current_time=$(date +"%T")
timestamp=$(date "+%Y-%m-%d %H:%M:%S")


if [ "$current_hour" -ge 5 ] && [ "$current_hour" -le 12 ]; then
	message="Morning"
elif [ "$current_hour" -ge 12 ] && [ "$current_hour" -le 18 ]; then
	message="Afternoon"
elif [ "$current_hour" -ge 18 ] && [ "current_hour" -le 22 ]; then
	message="Evening"
else
	message="Night"
fi



echo "Good $message, Mr/Ms $USER. Today is $current_day, and the time is $current_time"

log_entry="$timestamp - Good $message, Mr/Ms $USER. Today is $current_day, and the time is $current_time."

echo "$log_entry" >> .greeting.log

echo "This message has been logged to .greeting.log"
