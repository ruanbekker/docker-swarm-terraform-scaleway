#!/usr/bin/env bash

DOCKER_VERSION=$1
DEBIAN_FRONTEND=noninteractive apt-get -qq update

apt-get -qq install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"

apt-get -q update
apt-get -q install docker-ce=$DOCKER_VERSION containerd.io -y
