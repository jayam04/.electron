#!/bin/bash

cd /tmp

# Set the main download link
main_link="https://download.mozilla.org/?product=firefox-latest-ssl&os=linux64&lang=en-US"

# Fetch the final download link from the main link
download_link=$(curl -s -L -o /dev/null -w %{url_effective} "$main_link")

# Extract the filename from the download link
filename=$(basename "$download_link")

# Download the file
curl -O "$download_link"

# Extract the downloaded tar.bz2 file and move to correct folder
tar -xf "$filename"
mv firefox $ELECTRON_APPDIR/

# Clean up the downloaded tar.bz2 file if needed
rm "$filename"

# Create desktop file and move it.
touch firefox.desktop
echo "[Desktop Entry]
Name=Firefox
Comment=Browser you need.
Exec=$ELECTRON_APPDIR/firefox/firefox
Icon=$ELECTRON_APPDIR/firefox/browser/chrome/icons/default/default128.png
Terminal=false
Type=Application
Categories=Browser;" >> firefox.desktop

chmod +x firefox.desktop
mv firefox.desktop $HOME/.local/share/applications/

