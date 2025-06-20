#!/bin/bash

docker compose pull
docker compose up -d
docker compose logs -t --tail 1 -f
