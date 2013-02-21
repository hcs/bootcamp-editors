#!/bin/bash

dotfilesdir="dotfiles"

for f in .emacs .emacs.d
do
    if [ -e $HOME/$f ]
    then
        echo "$HOME/$f already exists!"
        echo "Please make a copy of this and then rerun this script"
        exit
    fi
done

echo "Symlinking $dotfilesdir to .emacs.d"
ln -s `pwd`/$dotfilesdir $HOME/.emacs.d
echo "Done!"