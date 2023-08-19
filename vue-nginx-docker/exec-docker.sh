# bk
# sudo rm -rf ./node_modules
# sudo npm install

# sudo docker system prune -a
# sudo docker image rm vue-image -f
# sudo docker rm vue-container -f

# sudo docker pull node:16

# sudo docker build -t vue-image .

# sudo docker run -d -p 3001:3000 --name vue-container vue-image

sudo chown -R simjh ~/.docker/buildx/current
sudo chown -R simjh ~/.docker/buildx/activity/desktop-linux

docker-compose -f docker-compose.yml build
docker-compose -f docker-compose.yml up


