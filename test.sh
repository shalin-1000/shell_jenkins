Creating directory /tmp/test_1
Copying file /var/lib/jenkins/workspace/shell_main/test.sh to /tmp/test
jenkins@ip-10-0-1-104:/tmp$ cat jen.sh 
#!/bin/bash

echo "Creating directory /tmp/test_1"
mkdir -p /tmp/test/
cd /tmp/test/
touch test.txt
mkdir -p /tmp/test/webhook/

echo "Copying file /var/lib/jenkins/workspace/shell_main/test.sh to /tmp/test"
cp /tmp/test/* /tmp/test/webhook/webhook.txt
