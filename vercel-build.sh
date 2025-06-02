#!/bin/bash

# Install Flutter dependencies
fvm flutter pub get

# Build Flutter web app
fvm flutter build web --release --web-renderer html

# Create .vercel/output directory
mkdir -p .vercel/output/static

# Copy build output to Vercel's output directory
cp -r build/web/* .vercel/output/static/

# Create the config file for Vercel
cat > .vercel/output/config.json <<EOL
{
  "version": 3,
  "routes": [
    {
      "src": "^/(.*)",
      "dest": "/static/index.html"
    }
  ]
}
EOL
