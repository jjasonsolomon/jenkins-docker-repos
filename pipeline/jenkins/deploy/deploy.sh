#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth
echo "..................."
echo "Transferring  .auth file to PROD machine"
echo "...................."
scp -i /opt/prod /tmp/.auth prod-user@192.168.56.101:/tmp/.auth

echo "Transfer of .auth file completed"

echo "..................."
echo "Transferring  publish file to PROD machine"
echo "...................."

scp -i /opt/prod ./jenkins/deploy/publish prod-user@192.168.56.101:/tmp/publish

echo "Transfer of publish file completed"


echo "Deploying in PROD machine"
echo "Making ssh connection"
ssh -i /opt/prod prod-user@192.168.56.101 "/tmp/publish"

echo "Deployment completed"


