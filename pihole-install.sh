# Allows you to bail-ship before breaking entire install.
echo "Are you root? If not, CTRL + C!"
read answer

apt update && sudo apt upgrade -y
curl -sSL https://install.pi-hole.net | bash
echo "Edit /etc/openvpn/server.conf's DNS line with the following IPv4..."
echo "Notice: this is always an internal IPv4:"
ifconfig tun0 | grep 'inet'

sudo tee -a /etc/lighttpd/lighttpd.conf > /dev/null <<EOT
# CRITICIAL! WITHOUT THE FOLLOWING BLOCK, OpenVPN clients can access pihole intrface. 
# Be sure to adjust the line below to account for your Admin/Mgt PC's IPv4.
$HTTP["remoteip"] !~ "YOUR ADMIN PC IPv4" {
    $HTTP["url"] =~ "^/" {
      url.access-deny = ( "" )
    }
 }
EOT

service lighttpd restart
service lighttpd status
service pihole-FTL status
echo "Installation done."
