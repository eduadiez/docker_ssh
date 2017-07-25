FROM ubuntu

RUN apt-get update \
  && apt-get -y install openssh-server \
  && rm -rf /var/lib/apt/lists/*

RUN mkdir /var/run/sshd 

ARG password
RUN sh -c "echo root:${password:-changeme} |chpasswd"

RUN sed -i '/PermitRootLogin/c\PermitRootLogin yes' /etc/ssh/sshd_config

EXPOSE 22
CMD /usr/sbin/sshd -D
