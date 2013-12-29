#!/bin/sh

RELEASE_VERSION=$(lsb_release -r | sed -e 's/Release:[\t]*//')

wget http://www.arangodb.org/repositories/arangodb/xUbuntu_${RELEASE_VERSION}/Release.key
sudo apt-key add - < Release.key


echo "deb http://www.arangodb.org/repositories/arangodb/xUbuntu_${RELEASE_VERSION}/ /" >> $HOME/arangodb.list
sudo mv ~/arangodb.list /etc/apt/sources.list.d/

sudo apt-get -qq update
sudo apt-get -y install arangodb=1.4.4
