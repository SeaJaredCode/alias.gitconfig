#!/bin/bash

TEMP_DIR=`mktemp -d`
LOG=/tmp/install_gitconfig.log

set -e

finish() {
    echo "Removing temporary files."
    rm -rf $TEMP_DIR >> $LOG
}

trap finish EXIT

echo "Logging to: $LOG"
echo "Downloading latest..."
git clone --progress --depth 1 https://github.com/SeaJaredCode/GitConfig.git $TEMP_DIR 2>> $LOG

echo "Installing..."
pushd $TEMP_DIR >> $LOG
./install.sh | tee -a $LOG
popd >> $LOG

echo "Completed successfully."
