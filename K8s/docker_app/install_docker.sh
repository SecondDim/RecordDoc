#! /bin/sh

docker build . -t node_app
docker run --rm -p 3000:3000 -it node_app
