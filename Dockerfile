FROM centos:centos6
MAINTAINER Luciano Resende <lresende@apache.org>

# Enable EPEL repository for GIT, Node.js and npm
RUN rpm -Uvh http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

# Install Git, Node.js and npm
RUN yum install -y git nodejs npm

# Checkout node-app-template from github
RUN git clone https://github.com/lresende/node-app-template /opt/node-app-template

# Install app dependencies
RUN ls /opt/node-app-template
RUN cd /opt/node-app-template; npm install

# Node app is running on port 3000
EXPOSE  3000

# Define what to run when container is started
CMD ["node", "/opt/node-app-template/bin/www"]
