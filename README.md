# docker_ssh

This container will allow you to set a password at build time with --build-arg password=<secret> and then just let you use the root user to access it

build:
```
sudo docker build -t eduadiez/ssh_docker --build-arg password=<secret> .
```
