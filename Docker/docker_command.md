docker run --rm -it [IAMGES]
docker run --rm [IAMGES] /bin/bash -c 'eval "$(rbenv init -)" && ruby root/hello.rb'
docker run --rm [IAMGES] /bin/sh -c 'eval "$(rbenv init -)" && ruby root/hello.rb'

docker rm $(docker ps -a -q)
docker rmi $(docker images -q)
