#!/usr/bin/env bash
. ~/.bashrc

BASHRC=/home/vagrant/.bashrc

#nvm and node 0.10.
if [ -z "$NODE_VERSION" ]; then
	echo "Installing node"
	cd ~
	#get the maven package into /vagrant...
	echo "export NODE_VERSION=0.10" >> $BASHRC
	echo "export NPM_VERSION=2.12" >> $BASHRC
	wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash
	echo 'nvm use 0.10' >> $BASHRC
	echo 'npm bin' >> $BASHRC

    NVM_DIR=/home/vagrant/.nvm
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
	
	nvm install 0.10
	nvm use 0.10
	npm bin
	npm install npm -g
	npm install -g yo@1.4 bower@1.4 grunt-cli@0.1

	. ~/.bashrc
else 
    echo "Node/npm/yo/bower/grunt is already installed."
fi  

cat aliases >> $BASHRC