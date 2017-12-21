#!/bin/bash -x

sudo apt install git
git clone https://github.com/574BandOfBrothers/memoriae-app
cd ./memoriae-app
sudo apt install npm
npm install
sudo sysctl -w fs.inotify.max_user_instances=1024
sudo sysctl -w fs.inotify.max_user_watches=12288
npm start

