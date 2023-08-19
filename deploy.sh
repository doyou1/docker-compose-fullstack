#!bin/bash

sudo git pull

echo "deploy frontend"
cd frontend

echo "npm install"
sudo npm install

echo "npm run build"
sudo npm run build

echo "sudo rm -rf /var/www/html/*"
sudo rm -rf /var/www/html/*

echo "sudo mv ./dist/* /var/www/html/"
sudo mv ./dist/* /var/www/html/

# 재실행
echo "sudo nginx -s reload"
sudo nginx -s reload

# my ip check
curl -4 icanhazip.com

cd ../backend
sudo npm install
sudo node index.js

# server location / root 관련
# /etc/nginx/sites-enabled/default
