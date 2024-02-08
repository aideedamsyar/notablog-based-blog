#!/bin/bash

# Generate site
notablog generate .

# Remove old 'docs' directory
rm -rf docs

# Copy 'public' to 'docs', preserving any existing files in 'docs'
cp -r public docs

# Check if CNAME exists in the 'docs' directory and preserve the custom domain
if [ -f "./CNAME" ]; then
    cp ./CNAME docs/CNAME
fi

# Add changes to git
git add .

# Commit changes
git commit -m 'publish'

# Push changes to the main branch
git push origin main
