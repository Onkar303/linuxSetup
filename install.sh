#!/bin/bash

init=("update" "upgrade")
applications=("transmission" "neofetch" "gnome-tweaks" "code" "vlc" "google-chrome-stable")
curlApplications=("https://get.sdkman.io" "https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh" "https://dl-cli.pstmn.io/install/linux64.sh")
wgetApplication=("https://dl.pstmn.io/download/latest/linux_64")
applicationDirPath="~/Applications"

if [ !-d "$applicationDirPath" ]
then
	mkdir "$applicationDirPath"
fi

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

for app in ${wgetApplications[@]};
do
	wget "$app" -P "$applicationDirPath"
done
