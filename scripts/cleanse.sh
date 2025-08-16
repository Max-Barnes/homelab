#!/usr/bin/bash

#use me as a cron job or run me as sudo every so often
apt update -y
apt upgrade -y

# removes unneeded dependencies and removes useless packages
apt autoremove -y
apt autoclean -y

echo "All done"
