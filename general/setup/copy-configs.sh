#!/bin/bash
HERE=$HOME/code/ubsetup/general

# All user configuration files live in ~/etc
cp -r $HERE/etc ~/etc

# Config files are symlinked where they are expected
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -s $HOME/etc/i3 ~/.config/i3/config
ln -s $HOME/etc/i3status ~/.config/i3status/config
ln -s $HOME/etc/Xresources ~/.Xresources
ln -s $HOME/etc/vimrc ~/.vimrc
ln -s $HOME/etc/taskrc ~/.taskrc
ln -s $HOME/etc/bash_aliases ~/.bash_aliases
ln -s $HOME/etc/compton.conf ~/.config/compton.conf
ln -s $HOME/etc/xinitrc ~/.xinitrc
