FROM debian:8.6
RUN apt-get update
RUN apt-get install -yy openssh-client openconnect iptables expect vim wget
RUN apt-get install  --force-yes -yy "libgnutls-deb0-28=3.3.8-6+deb8u7"
ADD connect.sh /root/connect.sh
ADD csd-wrapper.sh /root/csd-wrapper.sh
ENTRYPOINT /root/connect.sh

