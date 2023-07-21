#!/bin/bash

cd /tmp

# Download and extract Node.js stable version
echo "Downloading Package ..."
curl -o node-v18.17.0.tar.gz https://nodejs.org/dist/v18.17.0/node-v18.17.0-linux-x64.tar.xz

# Rename the extracted directory to a more convenient name
echo "Extracting Package ..."
tar -xf node-v18.17.0.tar.gz
rm node-v18.17.0.tar.gz
mv node-v18.17.0 $APPLICATIONS_FOLDER/node-v18.17.0

# Add Node.js to the system PATH
echo "Adding Node.js to PATH ..."
echo '# Node.js 18.17.0' >> $ELECTRON_CONFIGRC
echo "export PATH=\$PATH:$APPLICATIONS_FOLDER/node-v18.17.0/bin" >> $ELECTRON_CONFIGRC

echo "Finished Node.js-18 Setup"

