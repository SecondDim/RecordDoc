# Install docker ce on ubuntu 16.04

-- Ref [docs.docker](https://docs.docker.com/install/linux/docker-ce/ubuntu/#set-up-the-repository)


##### Uninstall old versions
```
$ sudo apt-get remove docker docker-engine docker.io
```

##### Install using the repository
```
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
```

##### Use the following command to set up the stable repository.
```
$ sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
```

##### INSTALL DOCKER CE
```
$ sudo apt-get update
$ sudo apt-get install docker-ce
```

##### Run docker
```
sudo docker run hello-world
```

##### Uninstall Docker CE
```
$ sudo apt-get purge docker-ce
$ sudo rm -rf /var/lib/docker
```

##### Memo
On production systems, you should install a specific version of Docker CE instead of always using the latest. This output is truncated. List the available versions.
```
$ apt-cache madison docker-ce
```

The contents of the list depend upon which repositories are enabled. Choose a specific version to install. The second column is the version string. The third column is the repository name, which indicates which repository the package is from and by extension its stability level. To install a specific version, append the version string to the package name and separate them by an equals sign (=):
```
$ sudo apt-get install docker-ce=<VERSION>
```
