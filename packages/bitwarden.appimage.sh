cd /tmp

MAIN_LINK="https://vault.bitwarden.com/download/?app=desktop&platform=linux"

curl -L -o Bitwarden.AppImage $MAIN_LINK

mv Bitwarden.AppImage $ELECTRON_APPDIR/
