#!/usr/bin/env bash

BUILD_DATE=$(date -u +'%Y-%m-%dT%H:%M:%SZ')
BUILD_VERSION=$1

echo "-------------------"
echo "Current VERSION is ${BUILD_VERSION}"
echo "-------------------"
docker buildx build . --platform linux/amd64,linux/arm64,linux/arm/v6,linux/arm/v7,linux/386,linux/s390x,linux/ppc64le --build-arg BUILD_DATE=$BUILD_DATE --build-arg BUILD_VERSION=$BUILD_VERSION -t alpine:$BUILD_VERSION --push
echo "${BUILD_VERSION} is pushed."
