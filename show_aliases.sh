#!/bin/bash

echo "Alias List:"
echo "sai='sudo apt install' - Install packages with apt"
echo "sau='sudo apt remove' - Remove packages with apt"
echo "sap='sudo apt-get purge' - Purge packages with apt-get"
echo "sapd='sudo apt update' - Update package lists with apt"
echo "sapg='sudo apt upgrade' - Upgrade all packages with apt"

echo "cpconfs='./InstallScripts/ForVM/CopyConfigs.sh' - Copy configs fron dotFiles directory"
echo "sbrc='source .bashrc' - Reload .bashrc"

echo "# git aliases"
echo "gpullo='git pull origin' - Pull latest changes from git origin"
echo "gpullom='git pull origin main' - Pull latest changes from git origin main branch"
echo "gstash='git stash' - Stash changes in git"

echo "# Server specific aliases"
echo "startcomfy='python3 ~/ComfyUI/main.py --listen --port 8888' - Start ComfyUI server"
echo "startserver='python3 ~/APIRetranslators/main.py' - Start API Retranslators server"
echo "CheckCUIS='tmux attach-session -t comfy_session' - Attach to tmux session 'comfy_session'"
