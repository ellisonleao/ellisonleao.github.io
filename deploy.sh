#!/bin/bash
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

hugo -t terminal 
cd public
git add .
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"
git push origin master
