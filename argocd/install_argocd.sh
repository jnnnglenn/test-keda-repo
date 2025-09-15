#!/bin/bash

# This script installs Argo CD into your Kubernetes cluster.

# 1. Create the namespace for Argo CD
echo "Creating namespace 'argocd'..."
kubectl create namespace argocd

# 2. Apply the stable installation manifest
echo "Applying Argo CD manifests..."
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

echo "
Argo CD installation initiated."
echo "It might take a few minutes for all components to be up and running."
echo "Use 'kubectl get pods -n argocd' to check the status."
