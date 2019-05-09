#! /bin/sh

# Use images
docker run -d -p 5000:5000 -v /home/ubuntu/docker_image_storage:/var/lib/registry --name registry registry:2

## Change loacl safety setting
## linux: /etc/docker/daemon.json
## MacOS: /Users/[user name]/.docker/daemon.json
## Add this line to json.
#  "insecure-registries": ["192.168.*.*:5000"]

# document
# https://docs.docker.com/registry/deploying/
