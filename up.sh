#!/bin/bash
#set -e

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

cd x86_64

#sh update.sh

repo-add --verify --sign isis.db.tar.gz *.pkg.tar.zst
cd ..

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
