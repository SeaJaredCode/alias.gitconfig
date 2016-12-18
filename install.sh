#!/bin/bash

ALIAS_FILE=${1:-~/.gitalias}

cp .gitalias $ALIAS_FILE
cp bin/* ~/bin

if [ -z `grep ~/.gitconfig -e "path\s*=.*$(basename $ALIAS_FILE)"` ]
then
    echo "It appears that the alias file is not yet included in your gitconfig.

Install by adding the following to ~/.gitconfig:

    [Include]
        path=$ALIAS_FILE"
fi
