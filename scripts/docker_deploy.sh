#!/bin/bash

cd /home/ubuntu/app

# Stop and remove existing container (if running)
docker stop static-web || true
docker rm static-web || true

# Build Docker image
docker build -t static-web .

# Run Docker container on port 80
docker run -d -p 80:80 --name static-web static-web

