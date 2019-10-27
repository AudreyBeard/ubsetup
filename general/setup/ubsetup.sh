#!/bin/bash
### script for setting up useful preferences in ubuntu on my personal machine
HERE=$PWD

# Which OS am I on?
case $(uname -a) in
  Linux*)  OS=linux;;
  Darwin*) OS=mac;;
  *)       OS=unknown 
esac

# Write important stuff to ~/.bashrc
./setup-bashrc.sh

# Make a .local directory
mkdir -p ~/.local

# Install systemwide stuff
./install-system.sh
cd $HERE

# Font stuff
if [ 0 ]; then
  git clone https://github.com/Tecate/bitmap-fonts.git ~/.local/bitmap-fonts
  mkdir -p ~/.bakfiles/etc/fonts/conf.d
  sudo mv /etc/fonts/conf.d/10* ~/.bakfiles/etc/fonts/conf.d
  sudo mv /etc/fonts/conf.d/70-no-bitmaps.conf ~/.bakfiles/etc/fonts/conf.d
  sudo ln -s /etc/fonts/conf.avail/70-yes-bitmaps.conf /etc/fonts/conf.d
  sudo dpkg-reconfigure fontconfig
fi

# Copy and link all config files
./copy-config.sh
cd $HERE

# Vim stuff
./setup-vim.sh
cd $HERE

# Install productivity tools for LaTeX and MarkDown
./install-latex-tools.sh

# Set up python stuff
./setup-python.sh

# Make sure Nautilus doesn't launch gnome desktop to play nice with i3
if [ OS == linux ]; then
  gsettings set org.gnome.desktop.background show-desktop-icons false
fi

# Use python3 as default in virtual environments
export $VIRTUALENV_PYTHON=/usr/bin/python3
	
# Additional packages
# Tell me what to do
echo '---------------------- ALL DONE -----------------------'
echo 'Go download f.lux or redshift, then make it autostart with .profile'
