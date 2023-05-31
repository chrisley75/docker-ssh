FROM ubuntu:latest

RUN apt update

RUN apt install  openssh-server sudo -y

RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 ubuntu 

RUN usermod -aG sudo ubuntu

RUN service ssh start

RUN  echo 'ubuntu:ubuntu' | chpasswd

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
