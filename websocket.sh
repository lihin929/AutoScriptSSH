#!/bin/bash
clear
echo Installing Websocket-SSH AUTOSCRIPT BY Lihin
sleep 1
echo Cek Hak Akses...
sleep 0.5
cd
#Install system auto run
wget -O /etc/systemd/system/ws-ovpn.service https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/ws-ovpn.service && chmod +x /etc/systemd/system/ws-ovpn.service

wget -O /usr/local/bin/ws-ovpn https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/ws-ovpn && chmod +x /usr/local/bin/ws-ovpn

#Enable & Start ws-ovpn service
systemctl enable ws-ovpn.service
systemctl start ws-ovpn.service
