#!/bin/bash


cd $APPLICATIONS_FOLDER
mkdir Obsidian
cd Obsidian

# Define the URL for the latest Obsidian release
OBSIDIAN_URLS=$(curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest \
| grep "browser_download_url.*AppImage" \
| cut -d : -f 2,3 \
| tr -d \")

OBSIDIAN_URLS=($OBSIDIAN_URLS)
OBSIDIAN_URL=${OBSIDIAN_URLS[1]}

# Download the Obsidian AppImage
curl -L -o obsidian.AppImage $OBSIDIAN_URL

# Make the AppImage executable
chmod +x obsidian.AppImage

# Create a desktop file for Obsidian
cat <<EOF > obsidian.desktop
[Desktop Entry]
Name=Obsidian
Exec=$(pwd)/obsidian.AppImage
Icon=$(pwd)/obsidian.png
Terminal=false
Type=Application
EOF

# Download the Obsidian icon
curl -L -o obsidian.png https://obsidian.md/favicon.ico

# Make the desktop file executable
chmod +x obsidian.desktop

# Move the desktop file to the appropriate location
mv obsidian.desktop ~/.local/share/applications/

echo "Obsidian has been installed on your system!"

