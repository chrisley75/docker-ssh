FROM ubuntu:latest

RUN apt update

RUN apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu 

RUN usermod -aG sudo ubuntu

RUN echo "Port 2222" >> /etc/ssh/sshd_config

RUN service ssh start

RUN  echo 'ubuntu:ubuntu' | chpasswd

EXPOSE 2222

CMD ["/usr/sbin/sshd","-D"]
