# docker 용량 비우기(-a : 현재 실행되지 않는 컨테이너의 이미지까지 삭제)
# sudo docker system prune -a
sudo docker-compose -f docker-compose.dev.yml build
sudo docker-compose -f docker-compose.dev.yml up -d
sudo docker ps