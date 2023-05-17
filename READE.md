docker build -t [tag]
docker image ls
docker container run -it -d [IMAGE] /bin/bash 
You need to tag your image correctly first with your registryhost:

docker tag [OPTIONS] IMAGE[:TAG] [REGISTRYHOST/][USERNAME/]NAME[:TAG]
Then docker push using that same tag.

docker push NAME[:TAG]
Example:

docker tag 518a41981a6a myRegistry.com/myImage
docker push myRegistry.com/myImage
