# openvpn.eselect
Gentoo openvpn.eselect - chose openvpn config

## Installing
``` bash
git clone https://github.com/uxter/openvpn.eselect.git
cp openvpn.eselect/openvpn.eselect /usr/share/eselect/modules/openvpn.eselect
mkdir -p /opt/openvpn/config
cp /etc/openvpn/openvpn.conf /etc/openvpn/openvpn.conf-old
```
## Configure
Add the appropriate OpenVPN configuration files (*.ovpn) in /opt/openvpn/config folder.

## Usage
Show config list
``` bash
eselect openvpn list
```
![Preview eselect openvpn list](https://raw.githubusercontent.com/uxter/openvpn.eselect/master/openvpn-eselect-example.jpg)

Show current config file
``` bash
eselect openvpn show
```

Set new config file
``` bash
eselect openvpn set 2
```

Show openvpn status
``` bash
service openvpn status
```
