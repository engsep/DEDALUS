#!/bin/bash

docker ps -a --format "table {{.Names}}\t{{.Status}}\t{{.Ports}}\t{{.ID}}" | sort

read enter
docker ps -a --format "table {{.Networks}}\t{{.Names}}\t{{.RunningFor}}\t{{.Image}}\t{{.Command}}\t{{.Mounts}}" | sort

read enter
docker compose logs -n 10 -f
