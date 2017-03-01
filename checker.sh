#!/bin/bash

# set -x

export PATH=/opt/checker/tnt/bin:$PATH

git clone -q git@github.com:$1 /opt/checker/repo

cd /opt/checker/repo

git config --add remote.origin.fetch +refs/notes/*:refs/notes/* 
git fetch -q origin
git checkout -q $2
tnt notes-pr HEAD staging

# git log --show-notes=* origin/staging..HEAD --pretty=format:%N | grep -v '^$'

