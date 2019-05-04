#!/bin/bash

# Random system stuff
sudo apt-get install curl -y
sudo apt-get install htop -y

# Specific Gnome stuff
sudo apt-get install gnome-tweak-tool -y
sudo apt-get install dconf-editor -y

# install i3 and associated stuff
sudo apt-get install i3-wm dunst i3lock i3status suckless-tools -y

# Magic Wormhole for transfering files easily
sudo apt-get install magic-wormhole -y


# Install productivity tools for LaTeX and MarkDown
./install-latex-tools.sh

# Install URxvt
sudo apt-get install rxvt-unicode -y

# Install task
sudo apt-get install taskwarrior -y

# Useful system stuff - nice for screen locking and copy/pasting
sudo apt-get install scrot -y       # Screenshot
sudo apt-get install feh -y         # Background images
echo '~/bin/feh-bg &' >> ~/.profile     #
sudo apt-get install autocutsel -y  # Copy/Paste
echo 'autocutsel &' >> ~/.profile   #
