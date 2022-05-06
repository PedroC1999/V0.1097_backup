#!/bin/bash

# start ssh and add identity, in ~/.bashrc file
#
# eval $(ssh-agent)
# ssh-add ~/.ssh/id_rsa
#
# crontab -e, 0 * * * * /home/pi/klipper_config/.backup_script.sh

CURRENTDATE=`date +"%d-%m-%Y %T"`

git add *
git commit -m "${CURRENTDATE}"
git push
