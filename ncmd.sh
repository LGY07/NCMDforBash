#!/bin/bash

#Check "wget"
hash wget > /dev/null 2>&1
if [ "$?" != "0" ]; then
    echo -e "\033[31mERROR:\033[0mPlease make sure wget is installed"
    echo -e "\033[33mDo you want to try installing wget?\033[0m"
    read -p "[Y/n](default=n)" install
    if [[ $install == "Y" || $install == "y" ]];then
        hash pacman > /dev/null 2>&1
        if [ "$?" == "0" ]; then sudo pacman -Sy wget --noconfirm && bash $0 $1 $2
        fi
        hash apt-get > /dev/null 2>&1
        if [ "$?" == "0" ]; then apt-get update wget -y;sudo apt-get install wget -y && bash $0 $1 $2
        fi
        hash dnf > /dev/null 2>&1
        if [ "$?" == "0" ]; then dnf check-update -y;sudo dnf install wget -y && bash $0 $1 $2
        fi
    fi
exit
fi

#Parameters
if [[ $1 == "-h" || $1 == "--help" ]];then 
echo -e "\033[34mNetEase Cloud Music Song Downloader for Bash\033[0m"
echo "usage: $0 [options] COMMAND"
echo ""
echo "List of Main Commands:"
echo ""
echo "-h    --help		display a helpful usage message"
echo "-d    --download  download a song by Song ID"
echo ""
echo "If no parameters are added, the default interaction mode."
echo ""
exit
elif [[ $1 == "-d" || $1 == "--download" ]];then
echo -e "\033[34mNetEase Cloud Music Song Downloader for Bash\033[0m"
echo "Downloading..."
wget 'https://music.163.com/song/media/outer/url?id='$2'.mp3' 2>> NCMD.log
if [ $? == 0 ];then
echo -e "\033[33mDone!\033[0m" && mv 'url?id='$2'.mp3' $2'.mp3' & exit
else echo -e "\033[31mERROR:\033[0mPlease check the log file NCMD.log" & exit
fi
fi

#Interaction
echo -e "\033[34mNetEase Cloud Music Song Downloader for Bash\033[0m"
echo "Please enter song ID"
read -p "Song ID:" songid
echo "Downloading..."
wget 'https://music.163.com/song/media/outer/url?id='$songid'.mp3' 2>> NCMD.log
if [ $? == 0 ];then
echo -e "\033[33mDone!\033[0m" && mv 'url?id='$2'.mp3' $2'.mp3'
else echo -e "\033[31mERROR:\033[0mPlease check the log file NCMD.log"
fi