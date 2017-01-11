#!/bin/bash

docker run --name mysql -e MYSQL_ROOT_PASSWORD=teste123 -d mysql
docker run --name blog -d --link mysql:mysql -p 80:80 wordpress