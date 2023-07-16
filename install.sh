#!/bin/bash

init=("update" "upgrade")
applications=("neofetch" "gnome-tweaks" "code" "vlc" "google-chrome-stable")
curlApplications=( "https://get.sdkman.io" "https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh" )


for x in ${init[@]};
do
	sudo apt-get "$x"
done


for app in ${applications[@]};
do
	sudo apt install "$app"
done

for app in ${curlApplications[@]};
do
	curl -s "$app" | bash
done

