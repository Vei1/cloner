#! /bin/bash
#veil

#Colours
   
   red="\033[1;31m"
   yellow="\033[1;33m"
   blue="\033[1;34m"
   green="\033[1;32m"
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
	echo -e $green "closing now"
	sleep 1
	clear 
	 exit 

}

function dependencestop() {
  echo -e $red
echo -e " checking dependences"
echo -e "----------------------"
echo 

}

function checkdependences() {
  echo -ne "git........"
  if ! hash git 2>/dev/null; then
    echo -e "\e[1;31mNot installed"$transparent""
      exit=1
    
  else
    echo -e "\e[1;32mOK!"$transparent""
  fi

  if [ "$exit" = "1" ]; then
  xterm -T "Installing git" -geometry 100x30 -e "sudo apt-get install git -y"
  clear 
  top
  dependencestop
  echo -e "git.......\e[1;32mOK!"$transparent""
  fi
  
}

function directory() {
  clear
  top
  echo
  echo -e $red"-----------------------------------------------------------"
  echo -e     "| "$transparent"  What is the directory location? "$red"(eg. /home/user/Code ) |"
  echo -e     "-----------------------------------------------------------"
  echo
  echo
  echo -n -e ""$red"["$blue"git"$yellow"@"$blue"cloner"$red"]-["$yellow"~"$red"]"$transparent""
  read dir

  clear
  top
  echo
  echo
  echo -e $green""
        git clone https://github.com/$org/$repo.git $dir
  
  sleep 3
  clear
  exit 1






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
  dependencestop
  sleep 1
echo
    checkdependences
  sleep 2
clear

top

echo
echo -e $red"---------------------------------------"
echo -e      "| "$transparent"   What is the organization name?  "$red" |"
echo -e  $red"---------------------------------------"
echo
echo
echo
echo -n -e ""$red"["$blue"git"$yellow"@"$blue"cloner"$red"]-["$yellow"~"$red"]"$transparent""
read org

clear
top 

echo 
echo -e $red"---------------------------------------"
echo -e     "| "$transparent"    What is the repository name?   "$red" |"
echo -e $red"---------------------------------------"
echo
echo
echo
echo -n -e ""$red"["$blue"git"$yellow"@"$blue"cloner"$red"]-["$yellow"~"$red"]"$transparent""
read repo

clear
top


echo
echo -e $red"------------------------------------------------------"
echo -e     "| "$transparent"    Would you like to donload to a specific dir    "$red"|" 
echo -e $red"------------------------------------------------------"
echo
echo
echo
echo -e "      "$red"["$yellow"1"$red"]"$transparent" Yes         "
echo -e "      "$red"["$yellow"2"$red"]"$transparent" No      "
echo
echo
echo -n -e ""$red"["$blue"git"$yellow"@"$blue"cloner"$red"]-["$yellow"~"$red"]"$transparent""
read yn

case "$yn" in
        1 ) directory ;;
        2 ) git clone https://github.com/$org/$repo.git;;
        * ) echo -e $red "INVALID ENTRY"
      esac


echo "----------------------------------------------"
sleep 2.5 
clear
echo -e $green "All Done!" 
sleep 1
clear
exit
