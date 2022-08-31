#! /bin/bash

notablog generate .
rm -rf docs
cp -r public docs
git add .
git commit -m 'published'
git push origin master