#!/usr/bin/bash

#use me as a cron job or run me as sudo every so often
apt update
apt upgrade

# removes unneeded dependencies and removes useless packages
apt autoremove
apt autoclean

echo "All done"