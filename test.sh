#!/bin/bash

echo "Uninstalling Docker"

# Stop the Docker service
sudo systemctl stop docker

# Remove the Docker package
sudo apt-get remove -y docker-ce

# Remove Docker images, containers, and volumes
sudo rm -rf /var/lib/docker

# Remove remaining Docker files and directories
sudo rm -rf /etc/docker

# Remove the Docker group
sudo groupdel docker

# Verify the uninstallation
if [ -x "$(command -v docker)" ]; then
    echo "Docker is still installed"
    exit 1
else
    echo "Docker uninstalled successfully"
fi
