#!/usr/bin/bash
#FellFreeToRecode
cyan='\e[0;36m'
green='\e[0;34m'
okegreen='\033[92m'
lightgreen='\e[1;32m'
white='\e[1;37m'
red='\e[1;31m'
yellow='\e[1;33m'
BlueF='\e[1;34m'
clear
BANNERS () {
printf "${lightgreen}==============================
         Nakanosec Tools
        H1 In Scope Grabber
${white}         -Adelittle-${lightgreen}
==============================\n
"
}
BANNERS

START () {
printf "${red}[>]${white} Input Username (https://hackerone.com/username)     :${lightgreen} "
read years
}
START

OPTIONS () {
printf "${red}[>]${white} Start From     :${lightgreen} "
read first
printf "${red}[>]${white} Finish At      :${lightgreen} "
read end
printf "${red}[>]${white} Save As        :${lightgreen} "
read nama
i=$first

until [ $i -gt $end ]
do
anuan=$(echo $i)
  ((i=i+1));
title=$(curl -kls "https://www.cubdomain.com/domains-registered-by-date/2019-11-15/${anuan}" | grep -Po '/site/\K.*?(?=")' >> $nama.txt );
  printf "\n${white}Result From: ${lightgreen}2019-11-15/${anuan}${white} Done \n"
done
}
OPTIONS
printf "\n${red}[>]${white}All Done\n"