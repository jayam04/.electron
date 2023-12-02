
# electron dir
electron_dir="export ELECTRON_DIR=\"~/.electron\""

echo $electron_dir >> ~/.zshrc
echo $electron_dir >> ~/.bashrc


# electronrc
electronrc="source \$ELECTRON_DIR/electronrc"

echo $electronrc >> ~/.zshrc
echo $electronrc >> ~/.bashrc

