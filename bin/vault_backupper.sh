#!/bin/bash

USER=jayam
echo "USER: $USER"
SOURCE_DIR_VAULT="/mount/$USER/Vault"
SOURCE_DIR_BVAULT="/media/$USER/Vault"
ARCHIVE_DIR="$SOURCE_DIR_BVAULT/archive"

IS_DIR=false

notify_user() {
    DISPLAY=:0.0 DBUS_SESSION_BUS_ADDRESS=unix:path=/run/user/$(id -u $USER)/bus notify-send -t 5000 "Vault Syncer" "$1"
}


copy_to_archive() {
    TIMESTAMP=$(date +"%Y%m%d%H%M%S")
    ARCHIVE_PATH="$ARCHIVE_DIR/$TIMESTAMP"
    mkdir -p "$ARCHIVE_PATH"

    if [ -d "$SOURCE_DIR_BVAULT" ]; then
        rsync -a --exclude="archive" "$SOURCE_DIR_BVAULT" "$ARCHIVE_PATH"
        mv $ARCHIVE_PATH/Vault/* $ARCHIVE_PATH
        rmdir $ARCHIVE_PATH/Vault
        rm -rf $(find "$SOURCE_DIR_BVAULT" -mindepth 1 -maxdepth 1 ! -name 'archive' -exec echo {} \;)
    else
        mkdir -p "$ARCHIVE_PATH"
    fi

    cp -r $SOURCE_DIR_VAULT/* $SOURCE_DIR_BVAULT/
}

while true; do
    if [ -d "$SOURCE_DIR_BVAULT" ]; then
        if [ "$IS_DIR" = false ]; then
            # inotifywait -e create -q "$SOURCE_DIR_BVAULT"
            copy_to_archive
            notify_user "Files copied successfully!"
            echo "Files copied successfully!"
            IS_DIR=true
        fi
    else
        if [ "$IS_DIR" = true ]; then
            IS_DIR=false
            echo "BackupVault Removed"
        fi
    fi
done
