#!/bin/bash

# Which OS am I on?
case $(uname -a) in
  Linux*)  OS=linux;;
  Darwin*) OS=mac;;
  *)       OS=unknown 
esac

if [ OS == linux ]; then
  INSTALL_CMD="apt-get install"
elif [ OS == mac ]; then
  # Install Homebrew
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  INSTALL_CMD="brew install"
fi

# Random system stuff
$(sudo $INSTALL_CMD curl htop -y)

# Magic Wormhole for transfering files easily
$(sudo $INSTALL_CMD magic-wormhole -y)

# Install task
$(sudo $INSTALL_CMD taskwarrior -y)

if [ OS == linux ]; then
  # Specific Gnome stuff
  sudo apt-get install gnome-tweak-tool -y
  sudo apt-get install dconf-editor -y
fi

# Install URxvt
# Don't think I really want this anymore
#sudo apt-get install rxvt-unicode -y
# install i3 and associated stuff
#sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y
# Useful system stuff - nice for screen locking and copy/pasting
#sudo apt-get install scrot -y       # Screenshot
#sudo apt-get install feh -y         # Background images
#echo '~/bin/feh-bg &' >> ~/.profile     #
#sudo apt-get install autocutsel -y  # Copy/Paste
#echo 'autocutsel &' >> ~/.profile   #
