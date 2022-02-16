#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u robert081996 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG robert081996/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push robert081996/$IMAGE:$BUILD_TAG
