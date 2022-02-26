#!/bin/bash

echo "***************************"
echo "** Building jar ***********"
echo "***************************"

WORKSPACE=/home/jenkins/volumejenkins/workspace/pipeline-maven

docker run --rm  -v $WORKSPACE/java-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"

