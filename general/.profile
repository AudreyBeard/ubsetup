# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"


# Run flux immediately (Added 11/7/17)
#~/.local/bin/xflux -z 12180

# xflux doesn't work with updated Nvidia drivers (for Cuda), so use redshift instead
#redshift -l 42.7:-73.7
# It seems that Redshift fucks with CUDA too, so don't run that automatically

#$HOME/.scripts/cuda-test

# Set inverted (natural) scrolling
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Scrolling Distance" -75, 75
xinput set-prop "ETPS/2 Elantech Touchpad" "Synaptics Palm Detection" 1
#This doesn't work
#redshift

# Background
~/.fehbg &

# Copy/paste tool
autocutsel &
