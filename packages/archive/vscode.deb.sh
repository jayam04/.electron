source "../helpers/colors.sh"

# Download VS Code
echo -e "${Blue}Downloading Visual Studio Code ...${NoColor}"
curl -o "/tmp/code.deb" -L "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

# Install VS Code
echo -e "${Blue}Installing ...${NoColor}"
sudo apt install "/tmp/code.deb"
echo -e "${Green}Installed Visual Studio Code!${NoColor}"

# Clear tmp files and exit
echo -e "Clearing used space ..."
rm /tmp/code.deb
echo -e "Done!"
