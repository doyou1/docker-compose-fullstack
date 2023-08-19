# docker 용량 비우기(-a : 현재 실행되지 않는 컨테이너의 이미지까지 삭제)
# sudo docker system prune -a
sudo docker-compose -f docker-compose.deploy.yml down

# 볼륨까지 제거
# sudo docker-compose -f docker-compose.deploy.yml down -v
sudo docker ps