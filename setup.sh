#!bin/bash

# before everything make sure your docker daemon is running
cd ./src

# build docker image
docker build -t game-container .

# run first container on port 3000
docker run -dp 127.0.0.1:3000:8080 game-container

# run second container on port 5000
docker run -dp 127.0.0.1:5000:8080 game-container