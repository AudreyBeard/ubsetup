#!/bin/bash

HERE=$HOME/code/ubsetup

# Vim
# pathogen
mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Vim Plugins
cd ~/.vim/bundle

# PEP8 linter
pip3 install flake8
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git ~/.vim/bundle/syntastic

# Vimwiki!
git clone https://github.com/vimwiki/vimwiki.git ~/.vim/bundle/syntastic
cp -r ~/.vim/bundle/syntastic/autoload ~/.vim/autoload/syntastic

# NERDTree
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
cp -r ~/.vim/bundle/nerdtree/autoload ~/.vim/autoload/nerdtree

# Go back
cd $HERE/setup
