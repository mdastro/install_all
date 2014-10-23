#!/bin/bash
## 
## After Install Script 
##
## Run this script in a terminal once you have finished your Ubuntu 14.04 or
## Linux Mint 17 installation.
##

echo ""
echo " After Install Script."
echo " Department of Astronomy - IAG/USP"
echo " Updating files first."
apt-get update

echo " Installing aptitude."
apt-get install aptitude

echo " Installing Python and Python Libs, graphical editors, latex, etc."
# Python Libs
aptitude install python-dev python-pip python-tk python-numpy python-scipy python-matplotlib python-pyfits ipython ipython-notebook

# Text editor on terminals

aptitude install vim vim-addon-manager vim-python-jedi 
# Music/Video Player
aptitude install vlc 

# Version controler
aptitude install git 

# Photo/Drawing
aptitude install inkscape gimp gphoto2 ufraw gimp-ufraw

# TeX
aptitude install texlive-latex-base-doc texlive-latex-recommended texlive-latex-recommended-doc texlive-latex-extra texlive-latex-extra-doc texlive-lang-portuguese texlive-science latex-beamer kile 

# Desktop terminal 
aptitude install guake 

# PDF reader
aptitude install okular 

# VNC
aptitude install remmina remmina-plugin-vnc 

# Mount folders/disks over the network
aptitude install nfs-common nfs-client nfs-server  

# Before installing IRAF
aptitude install csh saods9

# Cisco VPN client
aptitude install vpnc  

# Before install PyRAF
aptitude install xorg-dev libx11-dev 

# Drop and Virtual Boxes
aptitude install dropbox virtualbox virtualbox-guest-utils 

# Zip and Unzip
aptitude install p7zip-full atool

# Documents/References handling
aptitude install mendeleydesktop 
 
# Web Design
aptitude install npm node
npm install -g bower
bower install material-design-icons

echo ""
echo " Installing/Upgrading Python Libraries"
echo ""
sudo pip install numpy --upgrade
sudo pip install scipy --upgrade
sudo pip install matplotlib --upgrade
sudo pip install astropy --upgrade
sudo pip install watchdog --upgrade
sudo pip install argparse --upgrade

echo ""
echo " Installing Oracle Java"
echo ""
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java7-installer

echo ""
echo " Downloading and installing QFitsView for FITS data visualization." 
echo ""

wget http://www.mpe.mpg.de/~ott/QFitsView/QFitsView_3.1.linux64 
sudo chmod a+x QFitsView_3.1.linux64
sudo cp QFitsView_3.1.linux64 /usr/bin/QFitsView
sudo ln -s /usr/bin/QFitsView /usr/bin/qfitsview
rm QFitsView_3.1.linux64


