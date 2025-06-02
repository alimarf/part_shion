#!/bin/bash

# Exit on error
set -e

echo "--- Cleaning previous build ---"
fvm flutter clean

echo "--- Getting dependencies ---"
fvm flutter pub get

echo "--- Building Flutter web app ---"
fvm flutter build web --release --web-renderer html

echo "--- Preparing Vercel output ---"
# Create .vercel/output directory if it doesn't exist
mkdir -p .vercel/output/static

# Copy build output to Vercel's output directory
cp -r build/web/* .vercel/output/static/

# Create config file for Vercel
cat > .vercel/output/config.json <<EOL
{
  "version": 3,
  "routes": [
    { "handle": "filesystem" },
    { "src": "/(.*)", "dest": "/index.html" }
  ]
}
EOL

echo "--- Build and Vercel configuration completed successfully! ---"
