#!/bin/bash

# docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.ID}}" | sort
# docker ps -a --format "table {{.Networks}}\t{{.Names}}\t{{.RunningFor}}\t{{.Image}}\t{{.Command}}\t{{.Mounts}}"
# docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.Ports}}\t{{.ID}}"
docker ps -a --format "table {{.Names}}\t{{.Image}}\t{{.RunningFor}}\t{{.Status}}\t{{.ID}}"
read -n 1 key
docker ps -a --format "table {{.Names}}\t{{.Ports}}\t{{.Networks}}"
read -n 1 key
docker ps -a --format "table {{.Names}}\t{{.Command}}\t{{.Mounts}}"

#read enter
#docker compose logs -n 10 -f

echo
read -t 10 -n 1 -p "Show logs? (y/n)" choice || choice="y"
echo
[[ "$choice" =~ [yY] ]] && docker compose logs -n 10 -f
