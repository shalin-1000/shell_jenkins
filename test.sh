#!/bin/bash

echo "Installing Docker"

# Update the package lists
sudo apt-get update

# Install package dependencies
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common

# Add the Docker repository key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint of the key
sudo apt-key fingerprint 0EBFCD88

# Add the Docker repository to the system
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

# Update the package lists again
sudo apt-get update

# Install Docker
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Start the Docker service
sudo systemctl start docker

# Enable the Docker service to start on boot
sudo systemctl enable docker

# Verify the installation
docker --version

echo "Docker installed successfully"
