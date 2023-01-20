#!/bin/bash
set -e

git init
git config --global user.name "Jens Winklbauer"
git config --global user.email "jens@jewink.it"
git config --global credential.helper cache
git config --global credential.helper 'cache --timeout=25000'
git config --global push.default simple


echo "Git config done"
