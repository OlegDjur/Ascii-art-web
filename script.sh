#!/bin/bash

echo -e "\nBUILDING DOCKER IMAGE WITH NAME <ascii-art-web>\n"

docker build -t ascii-art-web .

echo -e "\nBUILDING AND RUNNING DOCKER CONTAINER WITH NAME <ascii-web> ON PORT 8080\n"

docker run -d -p 8080:8080 --name ascii-web ascii-art-web

echo -e "\n"

docker images

echo -e "\n"

docker ps -a