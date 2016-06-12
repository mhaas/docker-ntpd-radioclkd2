#FROM armv7/armhf-debian
# ubuntu has ntpd with debug support built in
FROM armv7/armhf-ubuntu
MAINTAINER Michael Haas <haas@computerlinguist.org>
RUN apt-get update && apt-get install -y ntp
COPY ntp.conf /etc/ntp.conf
