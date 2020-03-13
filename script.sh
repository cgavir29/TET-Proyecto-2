#!/bin/bash -ex

sudo apt-get update 
sudo apt-get upgrade -y
sudo apt-get install docker-compose -y
sudo git clone https://github.com/cgavir29/TET-Proyecto-2 wordpress 
sudo cd wordpress 
sudo docker-compose up -d
