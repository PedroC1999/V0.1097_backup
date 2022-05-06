#!/bin/bash
CURRENTDATE=`date +"%d-%m-%Y %T"`

git add *
git commit -m "${CURRENTDATE}"
git push
