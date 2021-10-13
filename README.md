# pihole-for-openvpn
Pi-Hole Installation Script for OpenVPN, applying patch to web interface (preventing your VPN clients from accessing interface) through LAN.

# Setup/Installation

```bash
wget https://github.com/rileyjnevins/pihole-for-openvpn/raw/main/pihole-install.sh
cat pihole-install.sh #make adjustments to config as needed!#
chmod +x pihole-install.sh
```

# Usage

```bash
./pihole-install.sh
```

Edit your `/etc/openvpn/server.conf` file to account for `tun0`'s IP address.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

