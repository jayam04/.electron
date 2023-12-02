# init
comment="\n# electronrc"

echo $comment >> ~/.zshrc
echo $comment >> ~/.bshrc


# electron dir
ELECTRON_DIR=~/.electron
electron_dir_cmd="export ELECTRON_DIR=$ELECTRON_DIR"

echo $electron_dir_cmd >> ~/.zshrc
echo $electron_dir_cmd >> ~/.bashrc


# electronrc
electronrc="source \$ELECTRON_DIR/electronrc"

echo $electronrc >> ~/.zshrc
echo $electronrc >> ~/.bashrc


# initialize electron bin file
echo "# Init\n" >> $ELECTRON_DIR/e-packages
