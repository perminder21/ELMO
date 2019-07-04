#!/bin/bash

#UNCOMMENT THE LINES in CASE YOU ARE doing it first time.

#curl -fsSL https://get.docker.com/ | sh 
#commented it out, because i have installed the docker package once.
#sleep 50
#systemctl start docker.service
#sleep 20
#systemctl status docker.service
#sleep 20
# To Enable Sym link
#systemctl enable docker
#sleep 20
#Packages for compose and other related upgrades
#yum install epel-release
#sleep 10
#yum install -y python-pip
#sleep 10
#pip install docker-compose
#sleep 10
#pip install –upgrade
#sleep 10
#yum upgrade python*
#sleep 10
docker-compose build
sleep 10
echo "Docker image has been build"
docker-compose up -d
sleep 10
echo "Docker compose is running"
docker run -dt --privileged=true -p 33060 -p 22 -p 3060 -p 80 -e EULA=yes elmo_project_php:latest
echo "Docker container has been Ocustrated"
