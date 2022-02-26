# ./Dockerfile 
FROM python:3
WORKDIR /usr/src/app

## Install packages
COPY requirements.txt ./
RUN pip install -r requirements.txt

## Copy all src files
COPY . .

## Run the application on the port 8080
EXPOSE 8000

# gunicorn 배포 명령어
# CMD ["gunicorn", "--bind", "허용하는 IP:열어줄 포트", "project.wsgi:application"]
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "stock.wsgi:application"]

# docker build '옵션' '도커에가입한 계정'/'프로젝트명':'버전' '경로'
# docker build -t safehoems/docker101tutorial:0.1.0 .

# 이미지 실행시키기
# docker run --name stock01 -d -p 8000:8000 safehoems/docker101tutorial:0.1.0
