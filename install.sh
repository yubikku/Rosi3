#!/bin/sh

git clone 

# automatically cron jobs

#write out current crontab
crontab -l > mycron
#echo new cron into cron file
echo "*/5 * * * * /home/$(user)/.local/bin/battery-alert" >> mycron
#install new cron file
crontab mycron
rm mycron