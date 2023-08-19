# 우분투에서 nginx 설치
sudo apt update
sudo apt install nginx

# Adjusting the Firewall
sudo ufw app list

    # Output
    #     Available applications:
    #     Nginx Full
    #     Nginx HTTP
    #     Nginx HTTPS
    #     OpenSSH

sudo ufw allow 'Nginx HTTP'
sudo ufw status
    if inactive
        sudo ufw enable

systemctl status nginx

# my ip check
curl -4 icanhazip.com

# sudo systemctl stop nginx
# sudo systemctl start nginx
# sudo systemctl restart nginx
# sudo systemctl reload nginx
# sudo systemctl disable nginx
# sudo systemctl enable nginx

# npm install
# npm run build

# cd /var/www/html
# sudo rm -rf *
# mv {project}/dist/* /var/www/html
# sudo mv /home/ubuntu/docker-compose-fullstack/frontend/dist/* /var/www/html/

# # 재실행
# sudo nginx -s reload

# server location / root 관련
# /etc/nginx/sites-enabled/default


sudo vi /etc/nginx/sites-enabled/default

 # node api reverse proxy

location /api/ {
    proxy_pass http://localhost:3000/;
}

