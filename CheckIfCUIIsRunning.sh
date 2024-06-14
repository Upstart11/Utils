#!/bin/bash

# Define the name of the tmux session
SESSION_NAME="startcomfy_session"

# Check if any process named 'python3' is running
if pgrep -x "python3" > /dev/null
then
    echo "python3 is running"
else
    echo "python3 is not running"

    # Check if the tmux session already exists
    if ! tmux has-session -t $SESSION_NAME 2>/dev/null; then
        # Create a new tmux session and run the command
        tmux new-session -d -s $SESSION_NAME 'startcomfy'
        echo "startcomfy is started in tmux session $SESSION_NAME"
    else
        echo "tmux session $SESSION_NAME already exists"
    fi
fi
