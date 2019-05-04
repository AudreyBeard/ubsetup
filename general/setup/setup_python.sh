#!/bin/bash
# Python stuff
# Install pip
sudo apt-get install -y python3-pip
sudo apt-get install -y ipython3
pip3 install virtualenv

mkdir -p $HOME/.venv
cd $HOME/.venv
python3 -m venv Py3
