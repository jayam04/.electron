#!/usr/bin/env bash

echo "Downloading Package ..."
wget https://download.oracle.com/java/20/latest/jdk-20_linux-x64_bin.tar.gz
tar --extract --file jdk-20_linux-x64_bin.tar.gz --directory $APPLICATIONS
rm jdk-20_linux-x64_bin.tar.gz

echo "Adding JDK to PATH ..."
DIR=$(find $APPLICATIONS_FOLDER . -maxdepth 1 -type d -name jdk-20\* -print | head -n1)
echo "Files saved in $DIR"
echo "# JDK 20" >> $ELECTRON_CONFIGRC
echo "PATH=$PATH:$DIR/bin" >> $ELECTRON_CONFIGRC

echo "Finished JDK-20 Setup"
