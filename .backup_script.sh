#!/bin/bash

# start ssh and add identity, in ~/.bashrc file
#
# eval $(ssh-agent)
# ssh-add ~/.ssh/id_git
#
# crontab -e, 0 * * * * /home/pi/klipper_config/.backup_script.sh

rm -f /home/pi/klipper_config/.backup_script.log
cp -a /home/pi/.moonraker_database/. /home/pi/klipper_config/.moonraker_database
CURRENTDATE=`date +"%d-%m-%Y %T"`
HOME=/home/pi
eval $(ssh-agent)
ssh-add ~/.ssh/id_git
cd /home/pi/klipper_config
git remote -v
echo "Adding, committing, pushing"
git add *
git commit -m "${CURRENTDATE}"
git push
echo "Done"
