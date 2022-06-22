#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
# login ECR aws
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 657224673055.dkr.ecr.us-east-1.amazonaws.com
# Create dockerpath
dockerpath=657224673055.dkr.ecr.us-east-1.amazonaws.com/project4

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"

# Step 3:
docker push "$dockerpath":latest
