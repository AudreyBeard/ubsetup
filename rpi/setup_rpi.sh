# Installing packages specifically for use with RPI
VPN_PROF_CONF=/etc/vpnc/profile_name.conf
VPN_PROF_CONF_S='/etc/vpnc/profile_name.conf'
apt-get install vpnc
touch $VPN_PROF_CONF
echo 'RPI External' >> $VPN_PROF_CONF
echo 'IPSec gateway vpn.net.rpi.edu' >> $VPN_PROF_CONF
echo 'IPSec id beardj2' >> $VPN_PROF_CONF
echo 'IPSec secret X' >> $VPN_PROF_CONF
echo '' >> $VPN_PROF_CONF

echo 'RPI Internal' >> $VPN_PROF_CONF
echo 'IPSec gateway vpn.wl.rpi.edu' >> $VPN_PROF_CONF
echo 'IPSec id beardj2' >> $VPN_PROF_CONF
echo 'IPSec secret X' >> $VPN_PROF_CONF

echo "[RPI VPN] before using VPN, replace 'X' with password in $VPN_PROF_CONF_S"
echo "[RPI VPN] to connect, use 'sudo vpnc $VPN_PROF_CONF_S'"
