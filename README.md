# docker_ssh

This container will allow you to set a password at build time with --build-arg password=<secret> and then just let you use the root user to access it

Build:
```
sudo docker build -t eduadiez/ssh_docker --build-arg password=<secret> .
```

Run:
```
sudo docker run -d --rm -P --name test_sshd eduadiez/ssh_docker
sudo docker port test_sshd 22
0.0.0.0:32782
ssh -p 32782 root@localhost
```
