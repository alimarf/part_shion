#!/bin/bash

# Exit on error
set -e

echo "--- Installing Flutter dependencies ---"
fvm flutter pub get

echo "--- Building Flutter web app ---"
fvm flutter clean
fvm flutter build web --release --web-renderer html

echo "--- Creating output directory ---"
mkdir -p .vercel/output/static

# Copy build files to Vercel's output directory
echo "--- Copying build files ---"
cp -r build/web/* .vercel/output/static/

# Create the config file for Vercel
echo "--- Creating Vercel config ---"
cat > .vercel/output/config.json <<EOL
{
  "version": 3,
  "routes": [
    { "handle": "filesystem" },
    { "src": "/.*", "dest": "/index.html" }
  ]
}
EOL

echo "--- Build completed successfully! ---"
