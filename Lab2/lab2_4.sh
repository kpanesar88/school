#!/bin/bash

if [ $# -eq 0 ]; then
	echo "No Arguements Provided Try Again"
	exit 1
fi 

read -p  "Please enter an integer: " x

if ! [[ "$x" =~ ^[0-9]+$ ]]; then
	echo "Please enter a positive integer:"
	exit 1
fi

if [ "$x" -le $# ] && [ "$x" -ge 1 ]; then

	echo "The arguement at position $x is: ${!x}"
else
	echo "No arguement has been provided at this position $x"
fi
