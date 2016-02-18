############################################################
# Based on Ubuntu
############################################################
# Set the base image to Ubuntu
FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Maintaner lou921944921

RUN apt-get -qq update && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
RUN apt-get -qq install rinetd && \
    sed -i '1a 0.0.0.0 443 192.184.12.180 443' /etc/rinetd.conf && \
    rinetd -c /etc/rinetd.conf
#RUN pkill rinetd  

#RUN sed -i '1a /usr/sbin/rinetd -c /etc/rinetd.conf' /etc/rc.local

EXPOSE 443

#RUN apt-get clean && \
#    rm -rf /var/lib/apt/lists/*
