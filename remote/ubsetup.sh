### script for setting up useful preferences in ubuntu on my personal machine
HERE=$PWD

# cs <dir>: combines cd <dir> and ls for simple navigation
echo '' >> ~/.bashrc
echo '# CS: combines cd and ls in one easy command' >> ~/.bashrc
echo 'function cs () {' >> ~/.bashrc
echo '  cd "$@" && ls' >> ~/.bashrc
echo '}' >> ~/.bashrc

# Make a .local directory
mkdir -p ~/.local

# Install systemwide stuff
./install-system.sh
cd $HERE

# Copy and link all config files
./copy-config.sh
cd $HERE

./setup_python.sh

# Vim stuff
#./setup-vim.sh
cd $HERE

# Use python3 as default in virtual environments
export VIRTUALENV_PYTHON=$(which python3)
	
# Get autoconf & automake
#sudo apt-get install autoconf
#sudo apt-get install automake
