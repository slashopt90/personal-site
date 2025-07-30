#!/bin/bash

echo "🔄 Building and publishing site..."

hugo
podman build  -t my-hugo-site .
podman-compose down
podman-compose up -d
echo "✅ Site published Ok!"
