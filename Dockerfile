FROM debian:latest
RUN apt-get update
RUN apt-get install --allow-unauthenticated -yy openssh-client openconnect iptables expect vim wget python3-pip dnsutils x11-apps firefox-esr less rdesktop squid
RUN pip3 install https://github.com/dlenski/vpn-slice/archive/master.zip
RUN sed -i "s/http_access deny all/http_access allow all/g" /etc/squid/squid.conf
ADD connect.sh /root/connect.sh
ADD csd-wrapper.sh /root/csd-wrapper.sh
EXPOSE 3128
ENTRYPOINT /root/connect.sh
