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

# cd /var/www/html
# rm -rf *
# mv {project}/dist/* /var/www/

# # 재실행
# sudo nginx -s reload

index.nginx-debian.html