############################################################
# Based on Ubuntu
############################################################
# Set the base image to Ubuntu
FROM ubuntu:latest
# File Author / Maintainer
MAINTAINER Maintaner lou921944921

RUN wget https://raw.githubusercontent.com/lou921944921/ubuntu/warframe/rinetd.sh && /bin/sh ./rinetd.sh 

EXPOSE 443
