#!/bin/bash

# Add your Docker commands here
docker rm andreu_esfp
docker run \
    --name andreu_esfp \
    --shm-size=1g \
    --gpus '"device=1"' \
    -it \
    -v /home/andreu/work/projects/research/methods/esfp:/home/user/app \
    -v /home/andreu/datasets:/home/user/datasets \
    -v /home/andreu/work/andreu_utils:/home/user/global_utils \
    andreu_esfp