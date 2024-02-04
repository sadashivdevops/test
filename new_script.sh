#!/bin/bash

# Get the list of all branches excluding 'main'
branches=$(git branch --list 'branch-*' | cut -c 3-)

# Loop through each branch
for branch in $branches; do
    # Checkout the branch
    git checkout $branch

    # Create a file with the branch name
    echo "This file is for branch: ${branch}" > "${branch}.txt"
    git add "${branch}.txt"
    git commit -m "Add file for branch ${branch}"
done
