# Installing packages specifically for use with RPI
apt-get install vpnc
echo "[RPI] installed: VPNC"
echo "      usage: sudo vpnc"
echo "      config: /etc/vpnc/default.conf"

# initialize lev info
touch ~/.ssh/config
echo "Host lev" >> ~/.ssh/config
echo "HostName lev.cs.rpi.edu" >> ~/.ssh/config
echo "User joshuabeard" >> ~/.ssh/config 
