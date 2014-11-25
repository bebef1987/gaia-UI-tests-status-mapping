#!/bin/bash

rm -rf out || exit 0;
mkdir out;

cd out
git init
git config user.name "Bebe"
git config user.email "travis@nodemeatspace.com"
cp ../results/manifest_status.html ./manifest_status.html
git add .
git commit -m "Deployed to Github Pages"
git push --force --quiet "https://${GH_TOKEN}@${GH_REF}"  master:gh-pages

