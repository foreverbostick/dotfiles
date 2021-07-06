#!/bin/sh

# Set a list of apps to install
appList="firefox lynx chromium qbittorrent notepadqq nano vim qpdfview libreoffice-fresh gimp inkscape krita openshot blender vlc htop pcmanfm ranger galculator alacritty tint2 flatpak picom"

# First off, check to see if user is Root

if (whoami != root)
  then echo "Please run as root"

  else (

# Install list script
pacman -Syy -y $appList
)
fi

echo -e "Application packages are installed. Login to user profile & run ./aurAppInstall script to install YAY and AUR packages"

exit