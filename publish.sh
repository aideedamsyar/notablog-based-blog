#! /bin/bash

notablog generate .
rm -rf docs
cp -r public docs
git add .
git commit -m 'publish'
git push origin main