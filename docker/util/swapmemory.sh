# 프리티어 EC2 메모리 부족 해결하기

# 1. 스왑 파일 생성하기
sudo dd if=/dev/zero of=/swapfile bs=128M count=16

# 2. 스왑 파일에 대한 일기 쓰기 권한 업데이트하기
sudo chmod 600 /swapfile

# 3. Linux 스왑 영역 설정하기
sudo mkswap /swapfile

# 4. 스왑 공간에 스왑 파일을 추가하여 스왑 파일을 즉시 사용할 수 있도록 하기
sudo swapon /swapfile

# 5. 절차가 성공했는지 확인하기
sudo swapon -s

# 6. /etc/fstab 파일을 편집하여 부팅 시 스왑 파일을 활성화하기
# 파일 열기
sudo vi /etc/fstab

# 파일 가장 마지막에 다음을 추가하고 :wq로 저장하고 종료
/swapfile swap swap defaults 0 0

# 7. free 명령어로 메모리 확인하기
free