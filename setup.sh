#!/usr/bin/env bash
while read repo; do
    echo "Processing: $repo"
    repo_dir="${repo#*/}"
    
    # Check if it's already a submodule by looking in .gitmodules
    if ! grep -q "path = $repo_dir" .gitmodules 2>/dev/null; then
        echo "Adding submodule for $repo_dir..."
        git submodule add -b main git@github.com:$repo.git || {
            echo "Error: Failed to add submodule for $repo"
            exit 1
        }
    else
        echo "Submodule $repo_dir already exists, skipping..."
    fi
done < repos.txt