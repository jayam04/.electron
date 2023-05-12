#!/bin/bash

# Download Postman
echo "Downloading Package ..."
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

# Extract Postman to the current directory
echo "Extracting Package ..."
tar -xzf postman.tar.gz -C $APPLICATIONS_FOLDER/

# Remove the tar.gz file
rm postman.tar.gz

# Create a .desktop file for Postman
echo "Creating Desktop Entry for AppImage ..."
echo "[Desktop Entry]
Encoding=UTF-8
Name=Postman
Exec=${APPLICATIONS_FOLDER}/Postman/app/Postman
Icon=${APPLICATIONS_FOLDER}/Postman/app/resources/app/assets/icon.png
Terminal=false
Type=Application
Categories=Development;" > postman.desktop

# Make the .desktop file executable
chmod +x postman.desktop

# Move the .desktop file to the applications directory
mv postman.desktop ~/.local/share/applications/

echo "Finished Postman Setup"
