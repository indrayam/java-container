#!/usr/bin/env bash

docker create --name foo code-jdk11
docker cp foo:/opt/jdk-minimal ./jdk-minimal
docker rm -f foo

