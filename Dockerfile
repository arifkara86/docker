FROM ubuntu:latest
RUN apt update -y && apt install openssh-server sudo -y
RUN useradd -rm -d /home/ubuntu -s /bin/bash -g root -G sudo -u 1000 test
RUN echo 'test:test' | chpasswd
RUN service ssh start
CMD ["/usr/sbin/sshd","-D"]
