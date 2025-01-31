#!/bin/bash
# v0.1
# Some random activities to trigger alerts in Prisma Cloud Compute

# Function to check if a command exists
check_command() {
  command -v "$1" >/dev/null 2>&1
}

echo "Starting some Containers"
docker run --rm -d -p 80:80 --name dvwa vulnerables/web-dvwa
docker run --rm -d -p 3000:3000 --name owasp-juice-shop bkimminich/juice-shop
docker run -d imiell/bad-dockerfile:latest /bin/sh

echo "Install Unzip"
sudo apt install unzip

wget https://github.com/vulhub/vulhub/archive/master.zip -O vulhub-master.zip
unzip vulhub-master.zip
cd vulhub-master

# Enter the directory of vulnerability/environment
#cd flask/ssti

# Compile environment
#docker compose build

# Run environment
#docker compose up -d

echo "Deployment script completed."
