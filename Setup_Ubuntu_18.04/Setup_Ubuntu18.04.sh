#!/bin/sh

while [ "$choice" != "q" ]
choice=""

do
        echo "-------Menu setup Ubuntu 18.04------"
        echo "1. Update and Upgrade Ubuntu"
        echo "2. Install Ibus Unikey"
        echo "3. Install Google Chorme"
        echo "4. Remove Firefox in Ubuntu"
	echo "5. Install Visual Studio Code"
	echo "6. Install Sublime text 3"
	echo "7. Install Apache,Mysql and PHP"
	echo "8. Install Mosquitto MQTT"
	echo "9. Install Nodejs"
        echo "q. Quit"
	echo "------------------------------------"
        echo -n "Please enter your choice: "

        read choice

        case $choice in
            '1') echo "Starting update and upgrade:" 
		 sudo apt-get update && sudo apt-get upgrade
		 exit;;
            '2') echo "Starting install Ibus:"
		 sudo apt-get install ibus-unikey
		 ibus restart
		 echo "Done!!";;
            '3') echo "Starting install Chrome:"
		 wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		 sudo dpkg -i google-chrome-stable_current_amd64.deb
 		 sudo rm -rf google-chrome-stable_current_amd64.deb
		 exit;;
            '4') echo "Starting removing Firefox in Ubuntu:"
		 sudo rm -rf /opt/firefox&&sudo apt remove firefox
		 exit;;
	    '5') echo "Starting install Visual studio code"
		 sudo apt update&&sudo apt install software-properties-common apt-transport-https wget
		 wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
		 sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
		 sudo apt install code
		 exit;;
	    '6') echo "Starting install Sublime text 3:"
		 sudo apt update&&sudo apt install apt-transport-https ca-certificates curl software-properties-common
		 curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
		 sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
		 sudo apt update&&sudo apt install sublime-text
		 exit;;
	    '7') echo "Starting install Apache:"
		 sudo apt update&&sudo apt install apache2
		 sudo systemctl stop apache2.service&&sudo systemctl start apache2.service&&sudo systemctl enable apache2.service
		 echo "Starting install Mysql"
		 sudo apt update&&sudo apt install mysql-server&&sudo mysql_secure_installation
		 echo "Starting install PHP 7.1"
		 sudo apt-get install software-properties-common&&sudo add-apt-repository ppa:ondrej/php
		 sudo apt update&&sudo apt install php7.1 libapache2-mod-php7.1 php7.1-common php7.1-mbstring php7.1-xmlrpc php7.1-gd php7.1-xml php7.1-mysql php7.1-cli php7.1-mcrypt php7.1-zip php7.1-curl
		 exit;;
	    '8') echo "Starting install Moquitto MQTT:"
		 sudo apt update &&sudo apt install mosquitto mosquitto-clients
		 exit;;
	    '9') echo "Starting install Nodejs"
		 sudo apt install curl
		 curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -
		 sudo apt install nodejs
		 exit;;
            'q') echo "Quiting!!";;
            *)   echo "menu item is not available; try again!";;
        esac
done

exit 0
