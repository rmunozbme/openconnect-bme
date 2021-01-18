FROM debian:latest
RUN apt-get update
RUN apt-get install --allow-unauthenticated -yy openssh-client openconnect iptables expect vim wget python3-pip dnsutils x11-apps firefox-esr less rdesktop
RUN pip3 install https://github.com/dlenski/vpn-slice/archive/master.zip
ADD connect.sh /root/connect.sh
ADD csd-wrapper.sh /root/csd-wrapper.sh
ENTRYPOINT /root/connect.sh
