#!/bin/bash

echo "Hello! I will install Bert Münnich's urxvt-perls."
echo "Using these will allow you to copy and paste using"
echo "the Alt key, which Linux calls the Meta Key."
echo "The reason we use Alt is because Ctrl+C, etc., are"
echo "bound to the terminal commands. Thus Ctrl+C will"
echo "CLOSE the program you are using in the console rather"
echo "than copy the text."
echo ""
echo "Fortunately, Bert came up with a way to use"
echo "Mark Lehmann's URXVT and Conrad Parker's xsel program"
echo "to make it possible to use copy and paste between"
echo "the command line programs and the graphic user interface"
echo "programs."
echo "This script is designed to install urxvt-perls."
echo "For full instructions for installing URXVT and xsel,"
echo "visit my wiki https://github.com/jrcharney/rigel/wiki/URXVT"
echo ""
echo "This script will make some changes to your ~/.Xresources file."

try=0
while true; do
	read -p "Are you sure you want to continue? [Y/n] " yn
	case $yn in
		[Yy]* ) break ;;
		[Nn]* )
			echo "No changes were made."
			echo ""
			echo "Thanks for using this script. Goodbye!"
			exit 0
			;;
		*)
			printf "Invalid entry. ";
			((try++))
			if [[ $try -eq 3 ]]; then
				printf "Program aborted after three tries.\n"
				exit 1
			else
				printf "Please try again.\n"
			fi
			;;
	esac
done

echo "OK, let's get started!"

echo ""
echo "Firstly, It's not a good idea to download your software to"
echo "Your home directory, so if you have Lunarize in"
echo "~/Lunarize, I'm going to have to stop you right here."
echo "Move this folder to something like"
echo "~/Software/jrcharney/Lunarize. If you download software from"
echo "GitHub, it probably is a good idea to put it in another folder"
echo "indicating who you got this repo from."
if [ $(pwd) = ${HOME}/Lunarize ]; then
	echo "This isn't going to work.  Move this repo and try again."
	exit 1
else
	echo "OK, this is good. Let's go on to the next step."
fi

echo "Hopefully you've installed perl5, urxvt, and xsel."
for item in git perl urxvt xsel xrdb; do
	where=$(which $item)
	if [[ ! -z $where ]]; then
		echo "$item: $where"
	else
		echo "$item not installed. Aborting."
	fi
done

echo ""
echo "OK, It looks like you have everything installed."
echo "Let's see if you have an ~/.Xresources file"
if [[ -f ~/.Xresources ]]; then
    echo "Yes, but as a courtesy, I'm just going to make a backup."
	cp ~/.Xresources ~/.Xresources.backup
	echo "Your backup copy of ~/.XResources is located at"
	echo "~/.Xresources.backup just in case you want to go back."
else
	echo "It looks like we'll have to create one."
	touch ~/.Xresources
fi
echo "I'm also going to make a copy of all the settings xrdb has stored."
echo "This will be put into a file called ~/.Xresources.old"
xrdb -query -all > ~/.Xresources.old

echo ""
echo "OK, we have our .Xresources backed up, lets go get the software."

mkdir muennich/
cd muennich/
git clone https://github.com/muennich/urxvt-perls.git
cd urxvt-perls/
[[ ! -d ~/.urxvt/ext/ ]] && mkdir -p ~/.urxvt/ext/
cp clipboard keyboard-select url-select ~/.urxvt/ext/
cd ../..
echo "Perls are downloaded and installed to ~/.urxvt/ext/."

echo ""
try=0
while true; do
	echo "One last thing before we wrap this up, do you want me to append"
	echo "the commands for the URXVT-Perls to your ~/.Xresources or would you"
	read -p "rather do this yourself? [Y/n] " yn
	case $yn in
		[Yy]* ) break ;;
		[Nn]* ) 
			echo "OK.  You can use my drop-in full version file, Xresources.full,"
			echo "or append perls.txt yourself to your your ~/.Xresources file, later."
			echo ""
			echo "Changes will take place as soon as you close"
			echo "URXVT and reopen it again."
			echo ""
			echo "Thanks for using this script. Goodbye!"
			exit 0
			;;
		*)
			printf "Invalid entry. ";
			((try++))
			if [[ $try -eq 3 ]]; then
				printf "Program aborted after three tries.\n"
				exit 1
			else
				printf "Please try again.\n"
			fi
			;;
	esac
done

echo ""
echo "I will now append the perls functionality to .XResources"
echo "Then apply the changes to xrdb"
cat perls.txt >> ~/Xresources
xrdb ~/.Xresources

echo ""
echo "And we're done. Changes will take place as soon as you close"
echo "URXVT and reopen it again."
echo ""
echo "Thanks for using this script. Goodbye!"

