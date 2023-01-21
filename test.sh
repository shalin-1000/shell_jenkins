#!/bin/bash

echo "Creating directory /tmp/test_1"
mkdir -p /tmp/test_1/

echo "Copying file /var/lib/jenkins/test.txt to /tmp/scmpoll_1.txt"
cp /var/lib/jenkins/test.txt /tmp/scmpoll.txt

echo "File copy completed"
