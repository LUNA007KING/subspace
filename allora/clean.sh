#!/bin/bash

docker stop $(docker ps -aq) && docker rm $(docker ps -aq) && docker rmi -f $(docker images -aq)
docker rm -f $(docker ps -a -q);docker system prune --volumes -a -f
rm -rf basic-coin-prediction-node
rm -rf allora-chain
