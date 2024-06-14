#!/bin/bash

# Check if any process named 'python3' is running
if pgrep -x "python3" > /dev/null
then
    echo "python3 is running"
else
    echo "python3 is not running"
    # Execute the command if python3 is not running
    startcomfy
fi
