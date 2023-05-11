#!/bin/bash

# install all in applications dir
cd $APPLICATIONS

# Download Postman
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

# Extract Postman to the current directory
tar -xzf postman.tar.gz -C .

# Remove the tar.gz file
rm postman.tar.gz

# Create a .desktop file for Postman
echo "[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=${PWD}/Postman/app/Postman
Icon=${PWD}/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;" > postman.desktop

# Make the .desktop file executable
chmod +x postman.desktop

# Move the .desktop file to the applications directory
mv postman.desktop ~/.local/share/applications/

