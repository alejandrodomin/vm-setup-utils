#!/bin/bash

# setup directory
mkdir ~/immich-app
cd ~/immich-app

# docker setup and install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

sudo apt install -y uidmap

dockerd-rootless-setuptol.sh install

# grab immich docker files
wget -O docker-compose.yml https://github.com/immich-app/immich/releases/latest/download/docker-compose.yml
wget -O .env https://github.com/immich-app/immich/releases/latest/download/example.env
