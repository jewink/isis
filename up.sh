#!/bin/bash
#set -e

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

repo-add -n -s -v x86_64/isis.db.tar.gz x86_64/*.pkg.tar.zst
rm x86_64/*.old*

# Below command will backup everything inside the project folder
git add --all .

# Give a comment to the commit if you want
echo "Write your commit comment!"
read input

# Committing to the local repository with a message containing the time details and commit text

git commit -m "$input"

# Push the local files to github

git push -u origin main

echo "Git Push Done"
