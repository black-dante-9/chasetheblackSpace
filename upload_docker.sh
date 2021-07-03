#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# Create dockerpath
export dockerpath=chasetheblack/udacity-capstone-project-2:latest


# Step 2:  
# Build the image
docker login --username chasetheblack
docker build -t $dockerpath .
docker tag capstone $dockerpath
echo "Docker ID and Image: $dockerpath"
# Step 3:
# Push image to a docker repository
docker push $dockerpath
