#!/bin/sh

sudo su

wget http://www.arangodb.org/repositories/arangodb/xUbuntu_12.04/Release.key
apt-key add - < Release.key

RELEASE_VERSION=$(lsb_release -r | sed -e 's/Release:[\t]*//')
echo "deb http://www.arangodb.org/repositories/arangodb/xUbuntu_${RELEASE_VERSION}/ /" >> /etc/apt/sources.list.d/arangodb.list
apt-get -qq update
apt-get -y install arangodb=1.4.3

exit
