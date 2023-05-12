#!/bin/bash

cd $APPLICATIONS_FOLDER

# Download and extract Node.js stable version
echo "Downloading Package ..."
curl -O https://nodejs.org/dist/latest-v18.x/node-v18.16.0-linux-x64.tar.xz

# Rename the extracted directory to a more convenient name
echo "Extracting Package ..."
tar -xf node-v18.16.0-linux-x64.tar.xz
rm node-v18.16.0-linux-x64.tar.xz
mv node-v18.16.0-linux-x64 node-v18.16.0

# Add Node.js to the system PATH
echo "Adding Node.js to PATH ..."
echo '# Node.js 18.16.0' >> $ELECTRON_CONFIGRC
echo "export PATH=\$PATH:$APPLICATIONS_FOLDER/node-v18.16.0/bin" >> $ELECTRON_CONFIGRC

echo "Finished Node.js-18 Setup"

