# pihole-for-openvpn
Pi-Hole Installation Script for OpenVPN, applying patch to web interface (preventing your VPN clients from accessing interface) through LAN.

# Setup/Installation
Type the following on your Linux machine (ideally Ubuntu 18.04 Server).
1. `wget https://github.com/rileyjnevins/pihole-for-openvpn/raw/main/pihole-install.sh`
2. Perform any edits needed, read file comments using `cat pihole-install.sh`
3. `chmod +x pihole-install.sh`
4. `./pihole-install.sh`
5. Edit your `/etc/openvpn/server.conf` file to account for `tun0`'s IP address.
6. Enjoy ad-free browsing through your OpenVPN installation.
