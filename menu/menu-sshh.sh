#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
yelow="\e[1;33m"
white="\e[1;37m"
cyann="\e[1;36m"

green_background="\033[42;37m"
red_background="\033[41;37m"
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION
if [ -f /home/needupdate ]; then
red "Your script need to update first !"
exit 0
elif [ "$res" = "Permission Accepted..." ]; then
echo -ne
else
red "Permission Denied!"
exit 0
fi
MYIP=$(wget -qO- ipinfo.io/ip);
clear
echo -e "   ${red_background}SSH MENU${NC}"
echo -e ""
echo -e "        ${white}[•1]${NC} ${cyann}Create ssh${NC}"
echo -e "        ${white}[•2]${NC} ${cyann}Create trial${NC}"
echo -e "        ${white}[•3]${NC} ${cyann}Renew ssh${NC}"
echo -e "        ${white}[•4]${NC} ${cyann}Delet ssh${NC}"
echo -e "        ${white}[•5]${NC} ${cyann}Cek user login${NC}"
echo -e "        ${white}[•6]${NC} ${cyann}List user${NC}"
echo -e "        ${white}[•7]${NC} ${cyann}Delet ssh expired${NC}"
echo -e "        ${white}[•8]${NC} ${cyann}Auto Kill ssh${NC}"
echo -e "        ${white}[•9]${NC} ${cyann}Cek multilogin ssh${NC}"
echo -e "        ${white}[•10]${NC} ${cyann}user lock${NC}"
echo -e "        ${white}[•11]${NC} ${cyann}user unlock${NC}"
echo -e "        ${yelow}[•0]${NC} ${yelow}Back To Menu${NC}"
echo -e "${yelow}"
read -p " >>>  "  opt
echo -e ""
case $opt in
1) clear ; usernew ; exit ;;
2) clear ; trial ; exit ;;
3) clear ; renew ; exit ;;
4) clear ; hapus ; exit ;;
5) clear ; cek ; exit ;;
6) clear ; member ; exit ;;
7) clear ; delete ; exit ;;
8) clear ; autokill ; exit ;;
9) clear ; ceklim ; exit ;;
10) clear ; user-lock ; exit ;;
11) clear ; user-unlock ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) echo "Anda salah tekan " ; sleep 1 ; menu-ssh ;;
esac
