#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /home/jenkins/prod /tmp/.auth centos@13.232.24.77:/tmp/.auth
scp -i /home/jenkins/prod ./jenkins/deploy/publish.sh centos@13.232.24.77:/tmp/publish.sh
ssh -i /home/jenkins/prod centos@13.232.24.77 "/tmp/publish.sh"
