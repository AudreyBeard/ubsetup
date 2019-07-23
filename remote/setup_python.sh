#!/bin/bash
# Python stuff
# Install pip
sudo apt-get install -y python3-pip
sudo apt-get install -y virtualenvwrapper
sudo apt-get install -y ipython3

source $(sudo find / -iname virtualenvwrapper.sh)

mkvirtualenv Py3 -p $(which python3)
workon Py3

pip install IPython ipdb scipy numpy torch torchvision pandas pillow flake8

echo '' >> ~/.bashrc
echo 'workon Py3' >> ~/.bashrc
