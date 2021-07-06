#!/bin/sh

# Set a list of apps to install
appList="brave mirage compton-conf"

# First off, check to see if user is Root

if (whoami != bostick)
  then echo "Please run as user"
  exit

  else (
  
  # cd into /opt and install yay
cd /opt

# Get yay from git
git clone https://aur.archlinux.org/yay-git.git

# Set root permissions
chown -R bostick:bostick ./yay-git

cd yay-git
makepkg -si -y

cd ~

# Install list script
yay -Syy $appList

# You'll need to verify all the packages to Diffs to show and whatever, I don't feel like typing all that out. Maybe for version 2.0?
)
fi

# Install Spotify with flatpak because the AUR version is being dumb. And it works just fine so whatever
sudo flatpak install com.spotify.Client

echo -e "AUR packages installed & Spotify installed via Flatpak! :D"

exit