#!/bin/bash

# This script installs Prometheus using the Helm chart.

# 1. Add the Prometheus community repo
echo "Adding Prometheus Helm repo..."
helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

# 2. Install the Prometheus chart
echo "Installing Prometheus..."
helm upgrade --install prometheus prometheus-community/prometheus \
  --namespace default \
  --version "25.20.0" \
  --set server.global.scrape_interval=1m

echo "
Prometheus installation initiated."

