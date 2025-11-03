#!/bin/zsh
# === upload.sh ===
# Quick uploader for GitHub ImageHost
# Usage: ./upload.sh "commit message"

# Navigate to the repo root
cd "$(dirname "$0")"

# Default commit message if none provided
timestamp=$(date +"%Y-%m-%d %H:%M")
msg=${1:-"Auto-upload on $timestamp"}

# Add all tracked and new files (except ignored ones)
git add -A

# Commit with the provided message
git commit -m "$msg"

# Push to GitHub
git push origin main

# Show current repo status
echo "✅ Upload complete!"

# git status

