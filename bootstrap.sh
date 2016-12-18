#!/bin/bash

TEMP_DIR=`mktemp -d`

git clone --depth 1 https://github.com/SeaJaredCode/GitConfig.git $TEMP_DIR
$TEMP_DIR/install.sh
