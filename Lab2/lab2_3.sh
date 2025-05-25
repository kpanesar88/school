#!/bin/bash

if [ $# -lt 4 ]; then
	echo "Error atleast 4 Arguements Needed"
	exit 1
fi

echo -n "$1"

echo -n "-"

shift 3

echo "$@"
