#!/bin/bash

# This script deletes both a local branch and a remote
# Currently this forces deleting a local un-merged branch

if [ $# -eq 0 ]; then
	echo "Must provide branch name"
	exit 1
fi

branch="$1"

echo "Deleting local branch $branch"
git branch -D "$branch"

echo "Deleting remote branch $branch"
git push origin --delete "$branch"


