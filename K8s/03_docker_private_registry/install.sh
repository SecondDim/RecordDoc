#! /bin/sh

# Use images to build registry
docker run -d -p 5000:5000 -v /home/ubuntu/docker_image_storage:/var/lib/registry --name registry registry:2

# Use images to build explorer
IP4_ADDRESS="$(ifconfig ens18 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')"
docker run -d --name registry-browser -it -p 8080:8080 -e DOCKER_REGISTRY_URL=http://$IP4_ADDRESS:5000 klausmeyer/docker-registry-browser

## Change loacl safety setting
## linux: /etc/docker/daemon.json
## MacOS: /Users/[user name]/.docker/daemon.json
## Add this line to json.
#  "insecure-registries": ["192.168.*.*:5000"]

# document
# https://docs.docker.com/registry/deploying/
