#!/bin/bash -x

# example of using arguments to a script
sudo apt install git
git clone https://github.com/574BandOfBrothers/memoriae-api
cd ./memoriae-api
cp ./src/config/environments/environments.json.example development.json
cp ./src/config/environments/environments.json.example test.json
cp ./src/config/environments/environments.json.example production.json
$ nvm install 8.1.1
$ npm run dev
sudo apt install npm
sudo apt install docker-compose
docker-compose build
CurrentUser="$(whoami)"
sudo groupadd docker
sudo usermod -aG docker $CurrentUser
sudo docker-compose up
npm install
