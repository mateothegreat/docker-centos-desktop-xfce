#!/bin/bash

BASE="appsoa"
IMAGE_NAME="docker-centos-desktop-xfce"
VERSION="testing"
NAME="xfce"

TAG="$BASE/$IMAGE_NAME:$VERSION"
# docker rm -f $NAME

docker build --no-cache -t $TAG .

# docker build --force-rm --no-cache -t appsoa/docker-centos-desktop-xfce:testing .
# docker build --force-rm -t yomateo/centos-desktop-vnc:testing .
# docker build --no-cache --force-rm -t yomateo/centos-desktop-vnc:testing .

# docker rm -f vnc

# docker rm -f vnc
# docker run -id  -e CONF_VNC_PASS=changeme \
#                 -p 5901:5901 -p 6901:6901 \
#                 --name vnc \
#                 yomateo/centos-desktop-vnc:testing

# docker logs vnc -f

