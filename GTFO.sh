#!/bin/bash
#
# ----------------------------------------------------
# Herramienta para automatizar escalada de privilegios
# mediante SUID y GTFObins
#
# 					by gto
# ----------------------------------------------------
# [*] GTFO ----> https://gtfobins.github.io/
#


greenC="\e[0;32m\033[1m"
endC="\033[0m\e[0m"
redC="\e[0;31m\033[1m"
blueC="\e[0;34m\033[1m"
yellowC="\e[0;33m\033[1m"
purpleC="\e[0;35m\033[1m"
turqC="\e[0;36m\033[1m"
grayC="\e[0;37m\033[1m"

#  GTFObins github web page
gtfo="https://gtfobins.github.io/gtfobins/"

# Main

echo -e "\n\n${turqC}    ______________________________________ ._.${endC}"
echo -e "${turqC}   /  _____/\__    ___/\_   _____/\_____  \| |${endC}"
echo -e "${turqC}  /   \  ___  |    |    |    __)   /   |   \ |${endC}"
echo -e "${turqC}  \    \_\  \ |    |    |     \   /    |    \|${endC}"
echo -e "${turqC}   \______  / |____|    \___  /   \_______  /_${endC}"
echo -e "${turqC}          \/                \/            \/\/${endC}"
echo -e "${greenC}        SUID priv escalation easy test"
echo -e "               [[gto]] script"
echo -e "         gracias a GTFObins.github.io${endC}\n"
echo -e "${yellowC}[*] ${endC}${greyC}Escaneando binarios SUID para usuario${endC} ${yellowC}[[$(whoami)]]${endC}\n"
suid_orig=$(find / -perm -4000 2>/dev/null)
echo -e "${yellowC}[*]${endC} Buscando binario posiblemente explotable\n"

for elemento in $suid_orig; do

	url="$(echo -e $elemento | rev | cut -d '/' -f1 | rev)"
	if [ $(curl -s --head $gtfo$url/ | head -n 1 | cut -d ' ' -f 2) == "200" ]; then
		echo -e "${greenC}[*]${endC} ${yellowC}$url${endC} ${turqC}parace explotable [!!]${endC}"
		suid_expl+=$(echo -e "$url ")
	else
		echo -e "${redC}[*]${endC} $url ${blueC}no parece explotable${endC}"
	fi

done

echo -e "\n\n${greenC}[*]${endC} ${turqC}Posibles binarios explotables:${endC}"
echo -e "${yellowC}    ------------------------------${endC}\n"

#suid_expl+=$(echo -e "awk  cat  chroot") #hardcodeado para testeo <-- borrar

for bin in $suid_expl; do

	vulns=$(curl -s $gtfo$bin/index.html | grep '<a href="/gtfobins/' | cut -d '#' -f2 | cut -d '"' -f1 | tr '\n' ' ')
#	vulns=$(echo -e $vulns | tr '\n' ' ')
	echo -e "${greenC}[!]${endC} [[${yellowC}$bin${endC}]] - vuln: ${redC}[ $vulns ]${endC}\n    URL: ${blueC}https://gtfobins.github.io/gtfobins/$bin/${endC}\n"

done




