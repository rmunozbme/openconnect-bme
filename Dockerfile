FROM debian:8.6
RUN printf "deb http://archive.debian.org/debian/ jessie main\ndeb-src http://archive.debian.org/debian/ jessie main\ndeb http://security.debian.org jessie/updates main\ndeb-src http://security.debian.org jessie/updates main" > /etc/apt/sources.list
RUN apt-get update
RUN apt-get install --allow-unauthenticated -yy openssh-client openconnect iptables expect vim wget python3-pip dnsutils x11-apps firefox-esr less rdesktop
RUN apt-get install --allow-unauthenticated --force-yes -yy "libgnutls-deb0-28=3.3.8-6+deb8u7"
RUN pip3 install https://github.com/dlenski/vpn-slice/archive/master.zip
ADD connect.sh /root/connect.sh
ADD csd-wrapper.sh /root/csd-wrapper.sh
ENTRYPOINT /root/connect.sh
