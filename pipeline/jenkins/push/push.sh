#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"
echo "** Logging in ***"
docker login -u techiejason -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG techiejason/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push techiejason/$IMAGE:$BUILD_TAG

echo "PUSHING COMPLETED"
