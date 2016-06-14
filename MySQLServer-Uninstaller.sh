#!/bin/bash
# @jaccon
tput clear
echo "MySQL Server Unistall for Mac OS X by @jaccon"
while true; do
    read -p "**** DANGER *** Are you really say goodbye to all MySQL Data ? please type y or n ---------->" yn
    case $yn in
        [Yy]* )
                        echo "Stop your MySQL Server"
                        /usr/local/mysql/support-files/mysql.server stop
                        echo "Unistall MySQL Server on OSX"
                        sudo rm /usr/local/mysql
                        sudo rm -rf /usr/local/mysql*
                        sudo rm -rf /Library/StartupItems/MySQLCOM
                        sudo rm -rf /Library/PreferencePanes/My*
                        rm -rf ~/Library/PreferencePanes/My*
                        sudo rm -rf /Library/Receipts/mysql*
                        sudo rm -rf /Library/Receipts/MySQL*
                        sudo rm -rf /var/db/receipts/com.mysql.mysql*
                        tput clear
                        echo "Unistallation completed... good bye dear friend ;-) Please reboot your machine"
                        exit

        ;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done
