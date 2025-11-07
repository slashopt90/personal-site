#!/bin/bash

echo "🔄 Building and publishing site..."
git fetch
git pull
hugo
podman build  -t my-hugo-site .
podman-compose down
podman-compose up -d
echo "✅ Site published Ok!"
