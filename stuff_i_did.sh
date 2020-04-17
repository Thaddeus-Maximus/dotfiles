# setup sudo as root
apt install sudo
usermod -aG sudo thad #replace thad with your username

# dependencies for dwm
sudo apt install -y libx11-dev libxft-dev libxinerama-dev
# get the actual source for dwm, st on your own... install it as specified

# compton is for transparency- must be launched before X (put `compton &' in your .xinitrc)
# feh is to set backgrounds- not complex (put `feh --bg-scale path_to_background.jpg' in your .xinitrc)
sudo apt install compton feh

# install sublime text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-get add -
sudo apt install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text



sudo alsactl init
# aplay -L and speaker-test are helpful in configuring this
# future me: you may need alsactl store

# https://wiki.debian.org/PulseAudio
sudo apt install pulseaudio pavucontrol
# add pulseaudio --start to xinitrc
# pavucontrol is helpful

sudo apt install xbindkeys
# make a .xbindkeysrc to go with this
# make sure to add xbindkeys to xinitrc

sudo apt install flameshot
flameshot config
# usage: `flameshot gui'

# install firefox
sudo apt install firefox-est
# firefox stuff
# change the default download directory
# lastPass, TreeStyleTabs
## get rid of tabs for TST (https://medium.com/@Aenon/firefox-hide-native-tabs-and-titlebar-f0b00bdbb88b)
## goto about:config, enable toolkit.legacyUserProfileCustomizations...
## goto humburger menu -> help -> Troubleshooting information
## goto the profile directory
## mkdir chrome
## make userChrome.css with:
##  #TabsToolbar { visibility: collapse; }
##  #titlebar { visibility: collapse; }
##  #sidebar-header { visibility: collapse !important; }

# install LaTeX. this takes a hot minute.
sudo apt install texlive-full

# install inkscape
sudo apt install inkscape

# if you use a data partition you can automount it with /etc/fstab. If that partition is FAT, you'll need
sudo apt install exfat-fuse exfat-utils

# Owncloud Client install (https://software.opensuse.org/download/package?project=isv:ownCloud:desktop&package=owncloud-client)
# Run these as root.
echo 'deb http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/Debian_10/ /' > /etc/apt/sources.list.d/isv:ownCloud:desktop.list
wget -nv https://download.opensuse.org/repositories/isv:ownCloud:desktop/Debian_10/Release.key -O Release.key
apt-key add - < Release.key
apt-get update
apt-get install owncloud-client






#TODO: DWM focus-and-select on mouseclick
#TODO: DWM monitors better
#TODO: Volume popup meter
#TODO: Faster touchpad
#TODO: dotfiles repo
#BUG: Grave is pause/break, but I can't seem to get shift+pausebreak to be tilde. ctrl+pausebreak is tilde.