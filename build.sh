#!/bin/bash

# Install Flutter dependencies
fvm flutter pub get

# Build Flutter web app
fvm flutter build web --release --web-renderer html

# Move build output to Vercel's output directory
mkdir -p .vercel/output/static
cp -r build/web/* .vercel/output/static/

# Create Vercel config
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
