#!/bin/bash

# Does everything for me
sudo chmod +x ./general/ubsetup.sh
sudo chmod +x ./rpi/setup_rpi.sh
sudo chmod +x ./general/setup_vim.sh

./general/ubsetup.sh
./rpi/setup_rpi.sh
./general/setup_vim.sh

cp ./general/.bash_aliases ~/.bash_aliases
cp ./.config/* ~/.config

mkdir ~/.scripts -p
cp ./.scripts/* ~/.scripts
