#!/bin/bash
# Python stuff
# Which OS am I on?
case $(uname -a) in
  Linux*)  OS=linux;;
  Darwin*) OS=mac;;
  *)       OS=unknown 
esac

if [ OS == linux ]; then
  INSTALL_CMD="apt-get install"
elif [ OS == mac ]; then
  INSTALL_CMD="brew install"
fi

# Install pip
$(sudo $INSTALL_CMD -y python3-pip python3-venv)
pip3 install virtualenv
pip3 install virtualenvwrapper

source $VIRTUALENVWRAPPER_SCRIPT
#mkdir -p $HOME/.venv
#cd $HOME/.venv
#python3 -m venv Py3

echo '# Default to using a venv' >> ~/.bashrc
echo 'source $HOME/.venv/Py3/bin/activate' >> ~/.bashrc

source $HOME/.venv/Py3/bin/activate
pip install IPython ipdb
pip install scipy numpy
