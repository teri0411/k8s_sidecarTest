#!/bin/bash
# 최신 Web 데이터를 GitHub로부터 취득 

# 환경변수가 설정되어 있지 않으면 에러 종료
if [ -z $CONTENTS_SOURCE_URL ]; then
   exit 1
fi

# 처음에는 GitHub에서 클론 
git clone $CONTENTS_SOURCE_URL /data

# 이후에는 1준 간격으로 git pull을 수행
cd /data
while true
do
   date
   sleep 60
   git pull
done