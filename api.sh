#!/bin/bash -x

# example of using arguments to a script
service mongod stop
sudo apt install git
git clone https://github.com/574BandOfBrothers/memoriae-api
cd ./memoriae-api
cp ./src/config/environments/environments.json.example ./src/config/environments/development.json
cp ./src/config/environments/environments.json.example ./src/config/environments/test.json
cp ./src/config/environments/environments.json.example ./src/config/environments/production.json
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt install npm
npm install nodemon --save
sudo apt install docker-compose
docker-compose build
CurrentUser="$(whoami)"
sudo groupadd docker
sudo usermod -aG docker $CurrentUser
sudo docker-compose up
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv0C49F3730359A14518585931BC711F9BA15703C68:50
#echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#sudo apt-get update
#sudo apt-get install mongodb-org
#sudo service mongod start
#npm install
#npm run dev

