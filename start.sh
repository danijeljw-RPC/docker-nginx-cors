#!/usr/bin/bash

echo "Angler-Bamboo-Bunkbed-Silliness6" | sudo -S ls

if [ ! -d "/data/caddy" ] 
then
    sudo mkdir -p /data/caddy
fi
sudo cp caddy/Caddyfile /data/caddy/Caddyfile


if [ ! -d "/data/caddy/data" ] 
then
    sudo mkdir -p /data/caddy/data
fi

if [ ! -d "/data/caddy/config" ] 
then
    sudo mkdir -p /data/caddy/config
fi

docker compose down && git pull && docker rmi $(docker images -aq) && docker compose up -d