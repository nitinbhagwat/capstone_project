#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=nitinbhagwat/udacity_devops:latest

# Step 2
# Run the Docker Hub container with kubernetes
# Assuming the Kubernetes cluster is ready
kubectl get nodes
# Deploy an App from the Dockerhub to the Kubernetes Cluster
kubectl create deploy udacity-devops --image=$dockerpath


# Step 3:
# List kubernetes pods
# See the status
kubectl get deploy,rs,svc,pods

# Step 4:
# Forward the container port to a host
kubectl port-forward pod/udacity-devops-78585497b8-8qqf5 --address 0.0.0.0 8000:80
