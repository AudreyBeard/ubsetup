#!/bin/bash
INSTALL_I3=0
HERE=$HOME/code/ubsetup/general
PARENT_DIR=$HOME/.local

# All user configuration files live in ~/etc
mkdir -p $PARENT_DIR
cp -r $HERE/etc $PARENT_DIR/etc

# Config files are symlinked where they are expected
if [ INSTALL_I3 ]; then
  mkdir -p ~/.config/i3
  mkdir -p ~/.config/i3status
  ln -s $PARENT_DIR/etc/i3 ~/.config/i3/config
  ln -s $PARENT_DIR/etc/i3status ~/.config/i3status/config
  ln -s $PARENT_DIR/etc/Xresources ~/.Xresources
  ln -s $PARENT_DIR/etc/compton.conf ~/.config/compton.conf
  ln -s $PARENT_DIR/etc/xinitrc ~/.xinitrc
fi

ln -s $PARENT_DIR/etc/vimrc ~/.vimrc
ln -s $PARENT_DIR/etc/taskrc ~/.taskrc
ln -s $PARENT_DIR/etc/bash_aliases ~/.bash_aliases
