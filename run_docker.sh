#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Build image and add a descriptive tag
docker build . -t project4:latest


# Step 2: 
# List docker images
docker images


# Step 3: 
# Run flask app
docker run --name project4-uda -p 8000:80 project4:latest
