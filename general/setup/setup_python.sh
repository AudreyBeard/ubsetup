#!/bin/bash
# Python stuff
# Install pip
sudo apt-get install -y python3-pip
sudo apt-get install -y python3-venv
sudo apt-get install -y ipython3
pip3 install virtualenv

mkdir -p $HOME/.venv
cd $HOME/.venv
python3 -m venv Py3

echo '# Default to using a venv' >> ~/.bashrc
echo 'source $HOME/.venv/Py3/bin/activate' >> ~/.bashrc

source $HOME/.venv/Py3/bin/activate
pip install IPython ipdb
pip install scipy numpy
