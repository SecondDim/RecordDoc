# Install Compose on Linux systems

-- Ref [docs.docker](https://docs.docker.com/compose/install/#install-compose)

download the latest version of Docker Compose
https://github.com/docker/compose/tags
```
# example
$ sudo curl -L https://github.com/docker/compose/releases/download/1.19.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
```

##### Apply executable permissions to the binary:
```
sudo chmod +x /usr/local/bin/docker-compose
```

##### Test the installation.
```
$ docker-compose --version
```

##### Uninstallation
```
sudo rm /usr/local/bin/docker-compose
```
