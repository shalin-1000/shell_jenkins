#!/bin/bash

echo "Creating directory /tmp/test"
mkdir -p /tmp/test

echo "Copying file /var/lib/jenkins/workspace/shell_main/test.sh to /tmp/test"
cp /var/lib/jenkins/workspace/shell_main/test.sh /tmp/test/

echo "File copy completed"
