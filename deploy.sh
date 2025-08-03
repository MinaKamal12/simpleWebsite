#!/bin/bash

# Exit on error
set -e

# Step 1: Build Docker image
echo "🔨 Building Docker image..."
docker build -t simple-website-docker .

# Step 2: Remove existing container (if running)
echo "🧼 Removing old container (if any)..."
docker rm -f simple-website-docker-container || true

# Step 3: Run new container
echo "🚀 Running new container..."
docker run -d \
  --name simple-website-docker-container \
  -p 80:80 \
  simple-website-docker

echo "✅ Deployment complete! Visit http://localhost/"
