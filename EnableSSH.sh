#!/bin/bash

# Update the package list
sudo apt update

# Install OpenSSH server and net-tools
sudo apt install -y openssh-server net-tools

# Enable and start the SSH service
sudo systemctl enable ssh
sudo systemctl start ssh

# Allow SSH through the firewall
sudo ufw allow ssh
sudo ufw enable -y

# Display the IP address
echo "The IP address of this VM is:"
ip addr show | grep "inet " | grep -v 127.0.0.1 | awk '{print $2}' | cut -d/ -f1
