if [ "${EUID}" -ne 0 ]; then
echo "You need to run this script as root"
exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
echo "OpenVZ is not supported"
exit 1
fi
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
MYIP=$(wget -qO- icanhazip.com);
echo "Checking VPS"
IZIN=$( curl https://raw.githubusercontent.com/izinrecode/AutoScriptSSH/main/ipvps | grep $MYIP )
if [ $MYIP = $IZIN ]; then
echo -e "${green}Permission Accepted...${NC}"
else
echo -e "${green}Permission Accepted...${NC}"
fi
mkdir /etc/v2ray
mkdir /var/lib/premium-script;
clear
echo "Masukkan Domain Anda, Jika Anda Tidak Memiliki Domain Klik Enter Dan"
echo "Ketikkan Perintah addhost setelah proses instalasi Script Selesai"
read -p "Hostname / Domain: " host
echo "$host" >> /var/lib/premium-script/ipvps.conf 
echo "$host" >> /etc/v2ray/domain
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
#wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
#wget https://raw.githubusercontent.com/4hidessh/baru/main/installer/ssh-vpn.sh && chmod +x ssh-vpn.sh && screen -S ssh-vpn ./ssh-vpn.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/sstp.sh && chmod +x sstp.sh && screen -S sstp ./sstp.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/wg.sh && chmod +x wg.sh && screen -S wg ./wg.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/ssr.sh && chmod +x ssr.sh && screen -S ssr ./ssr.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/sodosok.sh && chmod +x sodosok.sh && screen -S ss ./sodosok.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/ins-vt.sh && chmod +x ins-vt.sh && sed -i -e 's/\r$//' ins-vt.sh && screen -S v2ray ./ins-vt.sh
#install ehmm
clear
#curl -s https://wildyscript.my.id/Edu/bcki.txt
#wget https://raw.githubusercontent.com/izinrecode/x/main/gasss.sh && chmod +x gasss.sh && ./gasss.sh
#systemctl restart edu-proxy-nontls
#systemctl enable edu-proxy-nontls
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/websocket.sh && chmod +x websocket.sh && ./websocket.sh
wget https://raw.githubusercontent.com/lihin929/AutoScriptSSH/main/ipsec.sh && chmod +x ipsec.sh && screen -S ipsec ./ipsec.sh
apt-get install unzip
rm -f /root/ssh-vpn.sh
rm -f /root/sstp.sh
rm -f /root/wg.sh
rm -f /root/sodosok.sh
rm -f /root/websocket.sh
rm -f /root/ssr.sh
rm -f /root/ins-vt.sh
rm -f /root/go.sh
rm -f /root/ipsec.sh
history -c
echo "1.1" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━Autoscript Premium by JOMBLOSSH━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 992"  | tee -a log-install.txt
echo "   - Stunnel4                : 443, 222, 777"  | tee -a log-install.txt
echo "   - Dropbear                : 143, 109"  | tee -a log-install.txt
echo "   - SSH-WS                  : 2082"  | tee -a log-install.txt
echo "   - OVPN-WS                 : 2086"  | tee -a log-install.txt
echo "   - Squid Proxy             : 3128, 8080 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 5555"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 3443-3453"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - Trojan                  : 2087"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 05.00 GMT +7" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━BY JSTFREENET━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | tee -a log-install.txt
echo ""
echo " Reboot 10 Sec"
sleep 10
reboot
