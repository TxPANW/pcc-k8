#!/bin/bash
# v0.1
# Small test with Sock Shop if K8 ist working

# Check if kubectl is installed
if check_command kubectl; then
  echo "kubectl is already installed."
else
  echo "kubectl is not installed. Starting installation..."

  # Download and install kubectl  
  sudo snap install microk8s --classic

  # Verify if installation was successful
  if check_command kubectl; then
    echo "kubectl has been successfully installed."
  else
    echo "Failed to install kubectl. Please check manually."
    exit 1
  fi
fi

# Clone the repository
git clone https://github.com/microservices-demo/microservices-demo.git

# Navigate to the Kubernetes deployment directory
cd microservices-demo/deploy/kubernetes || { echo "Error: Directory not found."; exit 1; }

# Apply the Kubernetes configuration
kubectl apply -f complete-demo.yaml
