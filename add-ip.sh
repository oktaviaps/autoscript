#!/bin/bash
###########- COLOR CODE -##############
colornow=$(cat /etc/rmbl/theme/color.conf)
NC="\e[0m"
RED="\033[0;31m"
COLOR1="$(cat /etc/rmbl/theme/$colornow | grep -w "TEXT" | cut -d: -f2|sed 's/ //g')"
COLBG1="$(cat /etc/rmbl/theme/$colornow | grep -w "BG" | cut -d: -f2|sed 's/ //g')"
WH='\033[1;37m'
###########- END COLOR CODE -##########
ipsaya=$(curl -s -4 icanhazip.com)
data_server=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
date_list=$(date +"%Y-%m-%d" -d "$data_server")
data_ip="https://raw.githubusercontent.com/oktaviaps/permission/main/ip"
checking_sc() {
    useexp=$(curl -sS $data_ip | grep $ipsaya | awk '{print $3}')
    if [[ $date_list < $useexp ]]; then
        echo -ne
    else
        systemctl stop nginx
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}${COLBG1}          ${WH}• AUTOSCRIPT PREMIUM •                 ${NC}$COLOR1 │ $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│            ${RED}PERMISSION DENIED !${NC}                  │"
echo -e "$COLOR1│   \033[0;33mYour VPS${NC} $ipsaya \033[0;33mHas been Banned${NC}                             │"
echo -e "$COLOR1│     \033[0;33mBuy access permissions for scripts${NC}          │"
echo -e "$COLOR1│             \033[0;33mContact Your Admin ${NC}                 │"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
        exit
    fi
}
checking_sc
function harusadmin(){
clear
author=$(cat /etc/profil)
Isadmin=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $5}')
if [ "$Isadmin" = "ON" ]; then
m-ip
else
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}${COLBG1}              ${WH} KAMU BUKAN RESELLER               ${NC}$COLOR1 │$NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC} ${WH} [INFO] Kamu Bukan Reseller                 $COLOR1"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}             ${WH} Satan Fusion Tunneling${NC}              $COLOR1│$NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
exit
fi
}
cd
rm -rf /root/casper >/dev/null 
MYIP=$(curl -sS ipv4.icanhazip.com)
listuser=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $2}')
superadmin=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $7}')
uu=$(curl -sS https://pastebin.com/raw/BZ9Fcnqf)

APIGIT=$(cat /etc/github/api)
EMAILGIT=$(cat /etc/github/email)
USERGIT=$oktaviaps
author=$(cat /etc/profil)

function tambahip2(){
author=$(cat /etc/profil)
superadmin=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $7}')
if [ "$superadmin" = "VIP" ]; then
tambahip
else
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}${COLBG1}            ${WH} KAMU BUKAN SUPER ADMIN              ${NC}$COLOR1 │$NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC} ${WH} [INFO] Kamu Bukan Super Admin                 $COLOR1"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}             ${WH} Satan Fusion Tunneling${NC}              $COLOR1│$NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
}
function gantiip2(){
author=$(cat /etc/profil)
superadmin=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $7}')
if [ "$superadmin" = "VIP" ]; then
mkdir /root/rmbl
cd /root/casper/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ip &> /dev/null

data=( `cat /root/rmbl/ip | grep '^###' | cut -d ' ' -f 2 | sort | uniq`);
now=`date +"%Y-%m-%d"`
for user in "${data[@]}"
do
exp=$(grep -w "^### $user" "ip" | cut -d ' ' -f 3 | sort | uniq)
u4=$(grep -w "^### $user" "ip" | cut -d ' ' -f 4 | sort | uniq)
u5=$(grep -w "^### $user" "ip" | cut -d ' ' -f 5 | sort | uniq)

d1=$(date -d "$exp" +%s)
d2=$(date -d "$now" +%s)
exp2=$(( (d1 - d2) / 86400 ))
if [[ "$exp2" -le "0" ]]; then
sed -i "/### $user $exp $u4 $u5/d" ip &> /dev/null
fi
done
git add ip &> /dev/null
git commit -m remove &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission.git &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission.git &> /dev/null
else
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}${COLBG1}            ${WH} KAMU BUKAN SUPER ADMIN              ${NC}$COLOR1 │$NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC} ${WH} [INFO] Kamu Bukan Super Admin                 $COLOR1"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1│ ${NC}             ${WH} Satan Fusion Tunneling${NC}              $COLOR1│$NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
}
function add_ip(){
clear
nama2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $2}')
author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
superadmin=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $7}')

echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH} REGISTER IPVPS               ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
cd
rm -rf /root/rmbl >/dev/null 
until [[ $daftar =~ ^[0-9.]+$ ]]; do
read -p "   MASUKKAN IPNYA: " daftar
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  [INFO] Checking the IPVPS!"
sleep 1
REQIP=$(curl -sS https://raw.githubusercontent.com/${USERGIT}/permission/main/ip | awk '{print $4}' | grep $daftar)
if [[ $daftar = $REQIP ]]; then
echo -e "$COLOR1 ${NC}  [INFO] VPS IP Already Registered!!"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}                ${WH} Satan Fusion Tunneling${NC}                 $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
cd
rm -rf /root/rmbl >/dev/null 
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
else
echo -e "$COLOR1 ${NC}  [INFO] OK! IP VPS is not Registered!"
echo -e "$COLOR1 ${NC}  [INFO] Lets Register it!"
sleep 3
clear
fi
done
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH} REGISTER IPVPS               ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
until [[ $client =~ ^[a-zA-Z0-9_]+$ ]]; do
read -p "   User Name  : " client
done
if [ -z $client ]; then
cd
echo -e "$COLOR1 ${NC}  [INFO] Please Input client"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}                ${WH} Satan Fusion Tunneling${NC}                 $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
clear
if [ "$superadmin" = "VIP" ]; then
until [[ $hari =~ ^[0-9]+$ ]]; do
read -p " Expired (days): " hari
done
else
until [[ $hari =~ ^[0-3]+$ ]]; do
read -p " Expired (days) Max 30 Day: " hari
done
if [ -z $hari ]; then
echo -e "$COLOR1 ${NC}   [INFO] Please Input exp date"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}                ${WH} Satan Fusion Tunneling${NC}                 $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
fi
fi
if [ "$superadmin" = "VIP" ]; then
x="ok"

satu="ON"
dua="OFF"
while true $x != "ok"
do

echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  ${COLOR1}[01]${NC}  ADMIN   ${COLOR1}[02]${NC}  NORMAL"
echo -e "$COLOR1 ${NC}"
echo -ne "   Input your choice : "; read list
echo ""
case "$list" in 
   1) isadmin="$satu";
      read -p "Limit User (IP): " wip;
      break;;
   2) isadmin="$dua";break;;
   esac
done
fi
MYIP=$(curl -sS ipv4.icanhazip.com)
U2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $6}')

echo "### $client $exp $daftar" >> /etc/regip/ip
exp=$(date -d "$hari days" +"%Y-%m-%d")
hariini=$(date -d "0 days" +"%Y-%m-%d")
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/casper/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ip &> /dev/null
ws=1
regip2=$(expr "$U6" - "$ws")
sed -i "s/### $U2 $U3 $U4 $U5 $U6/### $U2 $U3 $U4 $U5 $regip2/g" ip
if [ "$superadmin" = "VIP" ]; then
echo "### $client $exp $daftar $isadmin $wip @$nama2" >>ip
else
echo "### $client $exp $daftar @$nama2" >>ip 
fi
git add ip
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission &> /dev/null
sleep 1
d1=$(date -d "$exp" +%s)
d2=$(date -d "$hariini" +%s)
certificate=$(( (d1 - d2) / 86400 ))
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH} REGISTER IPVPS               ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}  Client IP Register Successfully"
echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  Client Name   : $client"
if [ "$superadmin" = "VIP" ]; then
echo -e "$COLOR1 ${NC}  Admin Panel   : $isadmin"
echo -e "$COLOR1 ${NC}  JUMLAH IP    : $wip IP"
fi
echo -e "$COLOR1 ${NC}  IP VPS        : $daftar"
echo -e "$COLOR1 ${NC}  Register Date : $hariini"
echo -e "$COLOR1 ${NC}  Expired Date  : $exp"
echo -e "$COLOR1 ${NC}  Durasi Script  : $certificate Days"
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>   INFO REGISTER IP </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>CLIENT NAME   : ${client}</b>
<b>IP VPS CLIENT  : ${daftar}</b>
<b>REGISTER DATE : ${hariini}</b>
<b>EXPIRED DATE  : ${exp}</b>
<b>DURASI SCRIPT : ${certificate} Days</b>
<b>Succes Create this IP</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 5Menit Untuk Server KeRefresh</i>
<b><i>Terima Kasih Sudah Menggunakan Credits By Satan Fusion</i></b>
"

curl -s --max-time $TIMES -d "chat_id=$CHATID&disable_web_page_preview=1&text=$TEXT&parse_mode=html" $URL >/dev/null
cd
rm -rf /root/rmbl >/dev/null 
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}                ${WH} Satan Fusion Tunneling${NC}                 $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function viewapi(){
author=$(cat /etc/profil)
IPVPS=$(curl -s ipinfo.io/ip )
ISP=$(cat /etc/xray/isp)
CITY=$(cat /etc/xray/city)
nama2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $2}')
Exp2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $3}')
job2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $7}')
ip=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $6}')
sisaip=$(cat /etc/regip/ip | wc -l) 
totalip=$(expr "$ip" - "$sisaip")
if [ "$job2" = "VIP" ]; then
job="VIP SUPER ADMIN"
else
job="VIP ADMIN"
fi
clear
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}             ${WH} INFO PANEL               ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}   Nama   : $nama2"
echo -e "$COLOR1 ${NC}   IP     : $IPVPS"
echo -e "$COLOR1 ${NC}   ISP    : $ISP & $CITY"
echo -e "$COLOR1 ${NC}   EXP    : $Exp2"
echo -e "$COLOR1 ${NC}   ROLE   : $job"
echo -e "$COLOR1 ${NC}   SISA IP : $ip"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}                ${WH} Satan Fusion Tunneling${NC}                 $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e ""
read -n 1 -s -r -p "   Press any key to back on menu"
m-ip
}
function genkey(){
clear
nama2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $2}')
author=$(cat /etc/profil)
TIMES="10"
CHATID=$(cat /etc/per/id)
KEY=$(cat /etc/per/token)
URL="https://api.telegram.org/bot$KEY/sendMessage"
superadmin=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $7}')

echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH} GENERATE KEY IPVPS            ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
cd
until [[ $namaclient =~ ^[a-zA-Z0-9_.-]+$ ]]; do
read -rp "Masukan Nama tanpa spasi : " -e namaclient
done
if [ "$superadmin" = "VIP" ]; then
until [[ $mkey =~ ^[0-9]+$ ]]; do
read -p " Key Create (max 999) : " mkey
done
until [[ $totalkey =~ ^[0-9]+$ ]]; do
read -p " Expired (days) : " totalkey
done
else
until [[ $totalkey =~ ^[0-3]+$ ]]; do
read -p " Expired (days) Max 30 Day: " totalkey
done
fi

if [ "$superadmin" = "VIP" ]; then
x="ok"

satu="ON"
dua=""
while true $x != "ok"
do

echo -e "$COLOR1 ${NC}"
echo -e "$COLOR1 ${NC}  ${COLOR1}[01]${NC}  ADMIN   ${COLOR1}[02]${NC}  NORMAL"
echo -e "$COLOR1 ${NC}"
echo -ne "   Input your choice : "; read list
echo ""
case "$list" in 
   1) isadmin="$satu";
      read -p "Limit User (IP): " wip;
      break;;
   2) isadmin="$dua";break;;
   esac
done
fi


key=$(openssl rand -hex 5)

MYIP=$(curl -sS ipv4.icanhazip.com)
U2=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $2}')
U3=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $3}')
U4=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $4}')
U5=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $5}')
U6=$(curl -sS https://raw.githubusercontent.com/oktaviaps/permission/main/ip | grep $MYIP | awk '{print $6}')

exp=$(date -d "$hari days" +"%Y-%m-%d")
hariini=$(date -d "0 days" +"%Y-%m-%d")
git config --global user.email "${EMAILGIT}" &> /dev/null
git config --global user.name "${USERGIT}" &> /dev/null
mkdir /root/rmbl
cd /root/rmbl/ &> /dev/null
rm -rf .git &> /dev/null
git init &> /dev/null
wget https://raw.githubusercontent.com/${USERGIT}/permission/main/ip &> /dev/null
ws=1
regip2=$(expr "$U6" - "$ws")
sed -i "s/### $U2 $U3 $U4 $U5 $U6/### $U2 $U3 $U4 $U5 $regip2/g" ip
git add ip
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/permission &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/permission &> /dev/null
sleep 0.5
rm ip
wget https://raw.githubusercontent.com/${USERGIT}/license/main/key &> /dev/null
if [ "$superadmin" = "VIP" ]; then
x=1
while [ $x -le $mkey ]
do
key2=$(openssl rand -hex 5)
  echo "### $namaclient Key${key2} $totalkey $isadmin $wip" >> key
  echo "### $namaclient Key${key2} $totalkey $isadmin $wip" >> key2
x=$(( $x + 1 ))
done
else
echo "### $U2 Key${key} $totalkey" >> key
fi
rm -rf .git
git init >/dev/null 2>&1
git add key
git commit -m register &> /dev/null
git branch -M main &> /dev/null
git remote add origin https://github.com/${USERGIT}/license &> /dev/null
git push -f https://${APIGIT}@github.com/${USERGIT}/license &> /dev/null
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC} ${COLBG1}               ${WH} GENERATE KEY             ${NC} $COLOR1 $NC"
echo -e "$COLOR1╰═══════════════════════════════════════════════════╯${NC}"
echo -e "$COLOR1╭═══════════════════════════════════════════════════╮${NC}"
echo -e "$COLOR1 ${NC}  Sukses Create Key"
echo -e ""
echo -e "$COLOR1 ${NC} NAME CLIENT : $namaclient"
if [ "$superadmin" = "VIP" ]; then
echo -e "$COLOR1 ${NC}  Key SCRIPT : "
create2=$(cat /root/rmbl/key2 | grep -w "###" | cut -d ' ' -f 3-3)
echo -e "${create2}"
else
echo -e "$COLOR1 ${NC}  Key SCRIPT : Key${key}"
fi
echo -e "$COLOR1 ${NC}  TGL REGIST : $hariini"
echo -e "$COLOR1 ${NC}  Durasi VPS : $totalkey Hari"
echo -e ""
echo -e ""
echo -e "$COLOR1 ${NC}  Silahkan Disave Keynya"
if [ "$superadmin" = "VIP" ]; then
create3=$(cat /root/rmbl/key2 | grep -w "###" | cut -d ' ' -f 3-3)
TEXT="
<code>◇━━━━━━━━━━━━━━◇</code>
<b>   Info License Key </b>
<code>◇━━━━━━━━━━━━━━◇</code>
<b>Nama Client   : $namaclient</b>
<b>KEY SCRIPT  : </b>
<code>${create3}</code>
<b>TGL Register : ${hariini}</b>
<b>DURASI SCRIPT : ${totalkey} Hari</b>
<b>Succes Create This Key</b>
<code>◇━━━━━━━━━━━━━━◇</code>
<i>Tunggu 5Menit Untuk Server KeRefresh</i>
<b><i>Terima Kasih Sudah Menggunakan Credits By Satan Fusion</i></b>
"'&reply_markup={"inline_keyboard":[[{"text":"CHANNEL","url":"https://t.me/satanofficiall"},{"text":"ORDER AUTOSCRIPT","