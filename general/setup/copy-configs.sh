#!/bin/bash
HERE=$HOME/code/ubsetup/general

# All user configuration files live in ~/etc
mkdir -p ~/etc/
cp $HERE/etc/* ~/etc/

# Config files are symlinked where they are expected
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -s ~/etc/i3 ~/.config/i3/config
ln -s ~/etc/i3status ~/.config/i3status/config
ln -s ~/etc/Xresources ~/.Xresources
ln -s ~/etc/vimrc ~/.vimrc
ln -s ~/etc/taskrc ~/.taskrc
