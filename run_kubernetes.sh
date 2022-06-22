#!/usr/bin/env bash

# Step 1:
# Create secret to connect repository image docker private
kubectl create secret generic key \
    --from-file=.dockerconfigjson="/root/.docker/config.json" \
    --type=kubernetes.io/dockerconfigjson
# Step 2
# Run the Docker Hub container with kubernetes
kubectl apply -f deployment_project4.yaml
kubectl expose deployment project-4 --port=80 --name=service-project-4
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host
kubectl expose deployment project-4 --type=LoadBalancer --port=9000 --target-port=80