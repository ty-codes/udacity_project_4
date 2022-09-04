#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
# dockerpath=<your docker ID/path>
dockerpath=egypt28/ml-api

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

docker login -u egypt28
docker tag ml-api $dockerpath:latest

# Step 3:
# Push image to a docker repository
docker push $dockerpath:latest
