#!/bin/bash

echo "Uninstalling Terraform"

# Check if Terraform is installed
if [ -f /usr/local/bin/terraform ]; then
    echo "Terraform is installed"
else
    echo "Terraform is not installed"
    exit 1
fi

# Remove the Terraform binary
sudo rm /usr/local/bin/terraform

# Remove Terraform configuration files
sudo rm -rf ~/.terraform.d

echo "Terraform uninstalled successfully"
