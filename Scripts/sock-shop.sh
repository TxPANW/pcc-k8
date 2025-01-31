#!/bin/bash
# v0.1
# Small test with Sock Shop if K8 ist working

# Clone the repository
git clone https://github.com/microservices-demo/microservices-demo.git

# Navigate to the Kubernetes deployment directory
cd microservices-demo/deploy/kubernetes || { echo "Error: Directory not found."; exit 1; }

# Apply the Kubernetes configuration
kubectl apply -f complete-demo.yaml
