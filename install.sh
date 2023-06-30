#!/bin/bash

curl -O https://gitee.com/shuai_luther/docker/raw/master/docker-compose.yml

for i in {1..50}; do
    if sudo docker compose pull; then
        if sudo docker compose up -d; then
            break
        fi
    fi
    sleep 6
done
