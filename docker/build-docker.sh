#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-communitypay/communityd-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/communityd docker/bin/
cp $BUILD_DIR/src/community-cli docker/bin/
cp $BUILD_DIR/src/community-tx docker/bin/
strip docker/bin/communityd
strip docker/bin/community-cli
strip docker/bin/community-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
