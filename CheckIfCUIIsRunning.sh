#!/bin/bash

# Define the name of the tmux session
SESSION_NAME="comfy_session"

# Check if any process named 'python3' is running
if pgrep -x "python3" > /dev/null
then
    echo "python3 is running"
else
    echo "python3 is not running"

    # Check if the tmux session already exists
    if tmux has-session -t $SESSION_NAME 2>/dev/null; then
        echo "tmux session $SESSION_NAME already exists. Running startcomfy in the existing session."
        # Run startcomfy in the existing tmux session
        tmux send-keys -t $SESSION_NAME 'startcomfy' C-m
    else
        echo "tmux session $SESSION_NAME does not exist. Creating a new session and starting startcomfy."
        # Create a new tmux session and run the command
        tmux new-session -d -s $SESSION_NAME 'startcomfy'
    fi
fi
