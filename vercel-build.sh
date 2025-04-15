#!/bin/bash
set -e

echo "Current directory: $(pwd)"
echo "Listing directories:"
ls -la

# Remove theme directory if it exists
if [ -d "themes/blowfish" ]; then
  echo "Removing existing theme directory..."
  rm -rf themes/blowfish
fi

# Create themes directory if it doesn't exist
mkdir -p themes

# Clone the theme
echo "Cloning Blowfish theme..."
git clone --depth=1 --branch=main https://github.com/nunocoracao/blowfish.git themes/blowfish

# List contents of themes directory to verify
echo "Themes directory contents:"
ls -la themes/
ls -la themes/blowfish/

# Build the site
echo "Building Hugo site..."
hugo --gc --minify -v

echo "Build complete!" 