#!/bin/bash -ex

yum update -y
yum install docker git -y
curl -L "https://github.com/docker/compose/releases/download/1.23.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/bin/docker-compose
chmod +x /usr/bin/docker-compose
service docker start
git clone https://github.com/cgavir29/TET-Proyecto-2 wordpress 
cd wordpress 
docker-compose up -d
