#!/bin/bash

# Define the URL for the latest Obsidian release
OBSIDIAN_URL=$(curl -s https://api.github.com/repos/obsidianmd/obsidian-releases/releases/latest \
| grep "browser_download_url.*deb" \
| cut -d : -f 2,3 \
| tr -d \")

# Download the Obsidian .deb package
curl -L -o obsidian.deb $OBSIDIAN_URL

# Install the Obsidian package using dpkg
sudo dpkg -i obsidian.deb

# Install any missing dependencies
sudo apt-get -f install

# Clean up the downloaded package
rm obsidian.deb

