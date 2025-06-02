#!/bin/bash

# Exit on error
set -e

# Install Flutter dependencies
fvm flutter pub get

# Build Flutter web app
fvm flutter build web --release --web-renderer html

echo "Build completed successfully!"
