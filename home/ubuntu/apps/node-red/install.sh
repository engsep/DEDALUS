#!/bin/bash

# Install Node.js and Node-RED
sudo apt install build-essential git curl
bash <(curl -sL https://raw.githubusercontent.com/node-red/linux-installers/master/deb/update-nodejs-and-nodered)
echo
echo ---------------------------
echo Node-RED available commands
echo ---------------------------
echo node-red-start
echo node-red-stop
echo node-red-restart
echo node-red-log
echo ---------------------------
echo

# Start on boot
sudo systemctl enable nodered.service

# Disable start on boot
# sudo systemctl disable nodered.service

# Verify installations
node -v
