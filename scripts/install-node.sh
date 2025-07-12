#!/bin/bash


echo "Installing Node.js 16 and build tools..."

curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -

sudo apt-get install -y nodejs build-essential

echo "Node.js installation complete."

node -v
npm -v