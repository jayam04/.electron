wget https://download.oracle.com/java/20/latest/jdk-20_linux-x64_bin.tar.gz
tar --extract --file jdk-20_linux-x64_bin.tar.gz --directory $APPLICATIONS

cd "$APPLICATIONS_FOLDER/jdk*"
echo $pwd
echo "PATH=$PATH:$pwd" >> $ELECTRON_CONFIGRC
