#!/bin/bash
CURRENTDATE=`date +"%Y-%m-%d %T"`

git add *
git commit -m "${CURRENTDATE}"
git push
