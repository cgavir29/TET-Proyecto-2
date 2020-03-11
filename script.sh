#!/bin/bash

eval sudo apt-get update 
eval sudo apt-get upgrade -y
eval sudo apt-get install docker-compose -y
eval sudo git clone https://github.com/cgavir29/TET-Proyecto-2 wordpress 
eval sudo cd wordpress 
eval sudo docker-compose up -d
