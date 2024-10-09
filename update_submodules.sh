#!/bin/bash

# Update all submodules except the server
git submodule foreach '
    if [ "$path" != "pearai-server" ]; then
        git fetch
        git checkout origin/main
    else
        echo "Skipping update for $path"
    fi
'

# Check if there are changes
if [[ -n $(git status -s) ]]; then
    # Commit and push changes
    git add .
    git commit -m "Daily update of submodules $(date +%Y-%m-%d)"
    git push origin main
else
    echo "No updates to submodules."
fi