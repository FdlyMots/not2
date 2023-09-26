#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
###########- COLOR CODE -##############
NC="\e[0m"
RED="\033[0;31m" 
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
        # background validation

        green_background="\033[42;37m"

        red_background="\033[41;37m"

        # color text 

        yelow="\e[1;33m"

        NC="\033[0m"

        cyan="\e[1;36m"

        white="\e[1;37m"
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
clear 
echo -e ""
echo -e "   ${red_background}TROJAN-WS MENU${NC}"
echo -e ""
echo -e "        ${white}[•1]${NC} ${cyan}Create Trojan${NC}"
echo -e "        ${white}[•2]${NC} ${cyan}Create Trial${NC}"
echo -e "        ${white}[•3]${NC} ${cyan}Xtend account${NC}"
echo -e "        ${white}[•4]${NC} ${cyan}Delet account${NC}"
echo -e "        ${white}[•5]${NC} ${cyan}Cek user${NC}"
echo -e "        ${yelow}[•0]${NC} ${yelow}Back To Menu${NC}"
echo -e "${yelow}"
read -p " >>>   " opt
echo -e ""
case $opt in
1) clear ; add-tr ;;
2) clear ; trialtrojan ;;
3) clear ; renew-tr ;;
4) clear ; del-tr ;;
5) clear ; cek-tr ;;
0) clear ; menu ;;
x) exit ;;
*) echo "Boh salah tekan, Sayang kedak Babi" ; sleep 1 ; menu-trojan ;;
esac
