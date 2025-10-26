#!/bin/bash

echo "This simple script runs two comands to close ssh port on your device" 

sudo /etc/init.d/ssh stop
sudo systemctl disable sshd.service
