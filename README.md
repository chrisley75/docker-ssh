# SSH-dockerfile

This Dockerfile creates an ssh service inside a docker container

* default user and password is ubuntu
* I've edited the SSH conf from Dockerfile, so that the SSH server listens on port 2222 (default is 22)


## Building the image


` docker build -t IMAGE_NAME . ` 

## Runing the image 

` docker run -p 2222:2222 IMAGE_NAME `


## Or simply pull the image 

`docker pull REPO/IMAGE_NAM:latest`

## Deployment in k8s

* edit the file accordingly with your configuration (image name, etc.)

`kubectl apply -f k8s_deployment.yaml`
