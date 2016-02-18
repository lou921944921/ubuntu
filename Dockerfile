############################################################
# Dockerfile to build Nginx Installed Containers
# Based on Ubuntu
############################################################
# Set the base image to Ubuntu
FROM ubuntu:14.04
# File Author / Maintainer
MAINTAINER Maintaner lou921944921

RUN wget https://raw.githubusercontent.com/lou921944921/ubuntu/warframe/rinetd.sh && /bin/sh ./rinetd.sh 
