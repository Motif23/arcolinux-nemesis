#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website   :   https://www.erikdubois.be
# Website	:	https://www.arcolinux.info
# Website	:	https://www.arcolinux.com
# Website	:	https://www.arcolinuxd.com
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

#bookmarks

installed_dir=$(dirname $(readlink -f $(basename `pwd`)))
cp $installed_dir/settings/plasma/bookmarks/user-places.xbel ~/.local/share/user-places.xbel

sudo pacman -R xcursor-breeze --noconfirm
sudo pacman -R kvantum-qt5 kvantum-theme-arc arcolinux-kvantum-git arcolinux-config-git --noconfirm
sudo pacman -S plasma-meta kde-applications-meta --noconfirm --needed
sudo pacman -S arcolinux-plasma-nemesis-git --noconfirm --needed
sudo pacman -S surfn-arc-breeze-icons-git --noconfirm --needed
sudo pacman -S arcolinux-arc-kde --noconfirm --needed
sudo pacman -S arcolinux-config-plasma-nemesis-git --noconfirm --needed

echo "do a skel"

echo "################################################################"
echo "####                 PLASMA  INSTALLED                    ######"
echo "################################################################"
