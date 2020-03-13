#!/bin/bash -ex

apt-get update 
apt-get upgrade -y
apt-get install docker-compose -y
git clone https://github.com/cgavir29/TET-Proyecto-2 wordpress 
cd wordpress 
docker-compose up -d
