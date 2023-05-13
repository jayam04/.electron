#!/usr/bin/env bash

echo "Installing MegaSync for Ubuntu 22.04 ..."
wget https://mega.nz/linux/repo/xUbuntu_22.04/amd64/megasync-xUbuntu_22.04_amd64.deb
sudo apt install ./megasync-xUbuntu*.deb
rm megasync-xUbuntu*.deb
echo "Finished MegaSync Installation"