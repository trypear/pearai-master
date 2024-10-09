#!/bin/bash

# Update all submodules
git submodule update --remote

# Check if there are changes
if [[ -n  ]]; then
  # Commit and push changes
  git add .
  git commit -m "Daily update of submodules 2024-10-09"
  git push origin main
else
  echo "No updates to submodules."
fi
