#!/bin/bash
# Install and adjust vim
apt-get install -y vim

touch ~/.vimrc

# Set color scheme
echo 'colorscheme murphy' >> ~/.vimrc

# Set indent to four spaces
echo '" Tabs to 4 spaces' >> ~/.vimrc
echo "set tabstop=4" >> ~/.vimrc
echo "set expandtab" >> ~/.vimrc

# Set shift width to four spaces
echo '" Shift width to match tabs' >> ~/.vimrc
echo "set sw=4" >> ~/.vimrc
echo '' >> ~/.vimrc

# Show line numbers
echo '" Numbered lines' >> ~/.bashrc
echo "set number" >> ~/.vimrc

. ~/.vimrc
