#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 
green_background="\033[42;37m"
red_background="\033[41;37m"
yelow="\e[1;33m"
NC="\033[0m" 
cyan="\e[1;36m"
white="\e[1;37m"
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear
echo -e "${red_background}VMESS MENU${NC}"
echo -e ""
echo -e "${white}[•1]${NC} ${cyan}Create Vmess Account ${NC}"
echo -e "${white}[•2]${NC} ${cyan}Trial Vmess Account ${NC}"
echo -e "${white}[•3]${NC} ${cyan}Renew Vmess Account ${NC}"
echo -e "${white}[•4]${NC} ${cyan}Delete Vmess Account ${NC}"
echo -e "${white}[•5]${NC} ${cyan}Cek Vmess User Login ${NC}"
echo -e "${yelow}[•0]${NC} ${yelow}Back To Menu${NC}"
echo -e "${yelow}"
read -p " Select Options : "  opt
echo -e ""
case $opt in
1) clear ; add-ws ; exit ;;
2) clear ; trialvmess ; exit ;;
3) clear ; renew-ws ; exit ;;
4) clear ; del-ws ; exit ;;
5) clear ; cek-ws ; exit ;;
0) clear ; menu ; exit ;;
x) exit ;;
*) menu-vmess ;;
esac
