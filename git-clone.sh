#! /bin/bash
#veil

#Colors
   
   red="\033[1;31m"
   yellow="\033[1;33m"
   blue="\033[1;34m"
   transparent="\e[0m"

trap close SIGINT SIGHUP

function top() {
    echo ""
    echo -e "$red                                                "
    echo -e "       _____ _ _      _____ _                       "  
    echo -e "      / ____(_) |    / ____| |                      "
    echo -e "     | |  __ _| |_  | |    | | ___  _ __   ___ _ __ "
    echo -e "     | | |_ | | __| | |    | |/ _ \| '_ \ / _ \ '__|"
    echo -e "     | |__| | | |_  | |____| | (_) | | | |  __/ |   "
    echo -e "      \_____|_|\__|  \_____|_|\___/|_| |_|\___|_|   "
    echo -e "           By veil  "

}

function  close() {
	echo
	echo -e "closing now"
	sleep 1
	clear 
	 exit

}

function checkdependences() {
  echo -ne "git........"
  if ! hash git 2>/dev/null; then
    echo -e "\e[1;31mNot installed"$transparent""
    exit=1
  else
    echo -e "\e[1;32mOK!"$transparent""
  fi
  
}



   clear

echo ""
sleep 0.1 && echo -e "$red                                                "
sleep 0.1 && echo -e "       _____ _ _      _____ _                       "  
sleep 0.1 && echo -e "      / ____(_) |    / ____| |                      "
sleep 0.1 && echo -e "     | |  __ _| |_  | |    | | ___  _ __   ___ _ __ "
sleep 0.1 && echo -e "     | | |_ | | __| | |    | |/ _ \| '_ \ / _ \ '__|"
sleep 0.1 && echo -e "     | |__| | | |_  | |____| | (_) | | | |  __/ |   "
sleep 0.1 && echo -e "      \_____|_|\__|  \_____|_|\___/|_| |_|\___|_|   "
sleep 0.1 && echo -e "           By veil  "

sleep 1 
echo
echo -e " checking dependences"
echo -e "----------------------"
echo
checkdependences
sleep 2
clear

top

echo
echo         "---------------------------------------"
echo -e $red "    What is the organization name?   |"
echo         "---------------------------------------"
echo
echo
echo
echo -n -e ""$red"["$blue"git"$yellow"@"$blue"cloner"$red"]-["$yellow"~"$red"]"$transparent""
read org

clear
top 

echo 
echo -e $red"----------------------------------------"
echo -e     "     What is the repository name?      |"
echo -e     "----------------------------------------"
echo
echo
echo
echo -n -e ""$red"["$blue"git"$yellow"@"$blue"cloner"$red"]-["$yellow"~"$red"]"$transparent""
read repo

clear

sleep 0.7
top
git clone https://github.com/$org/$repo.git



echo "----------------------------------------------"
sleep 2.5 
clear
echo "All Done!" 
sleep 1
clear
exit
