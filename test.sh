Creating directory /tmp/test_1
Copying file /var/lib/jenkins/workspace/shell_main/test.sh to /tmp/test
jenkins@ip-10-0-1-104:/tmp$ cat jen.sh 
#!/bin/bash

echo "Creating directory /tmp/test_1"
mkdir -p /var/lib/jenkins/test/
cd /var/lib/jenkins/test
touch test.txt
mkdir -p /var/lib/jenkins/test_1/ 

echo "Copying file /var/lib/jenkins/workspace/shell_main/test.sh to /tmp/test"
cp /var/lib/jenkins/test/test.txt /var/lib/jenkins/test_1/jen_webhook.txt
