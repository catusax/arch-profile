#!/bin/bash

sudo cp ./bingimg.sh /usr/bin/bingimg
sudo chmod +x /usr/bin/bingimg
sudo cp ./bingimg.service /etc/systemd/system/bingimg.service 

sudo systemctl enable bingimg.service
sudo systemctl start bingimg.service
