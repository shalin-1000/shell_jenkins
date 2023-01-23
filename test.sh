#!/bin/bash

# Switch to the user's home directory
cd ~

# Create a file called "example.txt"
touch example.txt

# Copy the file to another location
cp example.txt /var/tmp/webhook123.txt 

if [ $? -eq 0 ]; then
  # Remove the source file
  rm example.txt
  echo "File successfully copied and the source file removed"
else
  echo "Error occurred while copying the file"
fi
