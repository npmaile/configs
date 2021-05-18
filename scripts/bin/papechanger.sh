#!/bin/bash


if [[ "$OSTYPE" == "darwin"* ]]; then
	Picker="choose"
elif [[ "$OSTYPE" == "linux-gnu*" ]]; then
	Picker="rofi -dmenu"
fi

change_pape_folder()
{
	options=$(ls -d "$walpaperdir"/* | sed "s:\($walpaperdir\)\(.*\)\/:\2:")
	selection=$(echo "$options" | "$Picker")	
	if [ $? -eq 0 ]; then
	echo $selection > ~/.papefolder
	folderpath="$walpaperdir/$(cat ~/.papefolder)"
	changepape
else
	exit 1
fi
}

pickpape()
{
	selectionfile="$(ls "$folderpath" | gshuf -n 1 )"
	selectionfullpath="$folderpath/$selectionfile"
	echo "$selectionfullpath"
	echo $selectionfullpath >> "$HOME/.papehistory"
}

changepape(){
	newPape="$(pickpape)"
	if [[ "$OSTYPE" == "darwin"* ]]; then
		osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"${newPape}\""
	elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
		echo "wow"
		#todo
	fi
}


#declare the root directory for the pape folders
walpaperdir="$HOME/Pictures/wallpapers"

#the script starts here
folderpath="$walpaperdir/$(cat $HOME/.papefolder)"
###############################
#main body
###############################

if [ -z "$*" ]; then
changepape
else
change_pape_folder
fi

