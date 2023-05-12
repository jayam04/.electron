#!/usr/bin/env bash

cd $APPLICATIONS_FOLDER
mkdir firebase-tools-linux
curl -L https://firebase.tools/bin/linux/latest --output firebase-tools-linux/firebase
chmod +x firebase-tools-linux/firebase
echo "# firebase-tools-linux" >> $ELECTRON_CONFIGRC
echo "export PATH=\$PATH:$PWD/firebase-tools-linux" >> $ELECTRON_CONFIGRC