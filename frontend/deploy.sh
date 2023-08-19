sudo git pull

sudo npm install
sudo npm run build
sudo rm -rf /var/www/html/*
sudo mv ./dist/* /var/www/html/

# 재실행
sudo nginx -s reload

# my ip check
curl -4 icanhazip.com

# server location / root 관련
# /etc/nginx/sites-enabled/default
