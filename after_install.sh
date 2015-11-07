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
apt-get install --yes --force-yes aptitude

echo " Installing Python and Python Libs, graphical editors, latex, etc."
# Python Libs
aptitude install --yes --force-yes python-dev python-pip python-tk python-numpy python-scipy python-matplotlib python-pyfits ipython ipython-notebook

# R (@cran.r)
aptitude install --yes --force-yes r-base

# Text editor on terminals
aptitude install --yes --force-yes vim vim-addon-manager vim-python-jedi 

# Music/Video Player
aptitude install --yes --force-yes vlc 

# Version controler
aptitude install --yes --force-yes git 

# Photo/Drawing
aptitude install --yes --force-yes inkscape gimp gphoto2 ufraw gimp-ufraw

# TeX
aptitude install --yes --force-yes texlive-latex-base-doc texlive-latex-recommended texlive-latex-recommended-doc texlive-latex-extra texlive-latex-extra-doc texlive-lang-portuguese texlive-science latex-beamer kile texlive-latex3  texlive-latex-extra texlive-latex3  texlive-latex-extra texlive-math-extra texlive-math-extra

# Desktop terminal 
aptitude install --yes --force-yes guake 

# PDF reader
aptitude install --yes --force-yes okular 

# VNC
aptitude install --yes --force-yes remmina remmina-plugin-vnc 

# Mount folders/disks over the network
aptitude install --yes --force-yes nfs-common nfs-client nfs-server  

# Before installing IRAF
aptitude install --yes --force-yes csh saods9

# Cisco VPN client
aptitude install --yes --force-yes vpnc  

# Before install PyRAF
aptitude install --yes --force-yes xorg-dev libx11-dev 

# Drop and Virtual Boxes
aptitude install --yes --force-yes dropbox virtualbox virtualbox-guest-utils 

# Zip and Unzip
aptitude install --yes --force-yes p7zip-full atool

# Documents/References handling
aptitude install --yes --force-yes mendeleydesktop 
 
# Web Design
aptitude install --yes --force-yes npm node
npm install -g bower
bower install material-design-icons

echo ""
echo " Installing/Upgrading Python Libraries"
echo ""
pip install numpy --upgrade
pip install scipy --upgrade
pip install matplotlib --upgrade
pip install astropy --upgrade
pip install watchdog --upgrade
pip install argparse --upgrade
pip install pandas --upgrade
pip install statsmodels --upgrade
pip install seaborn --upgrade
pip install --no-deps astropy

echo ""
echo " Installing R"
echo ""
sudo apt-get update
sudo apt-get install r-base

echo ""
echo " Installing Oracle Java"
echo ""
apt-get purge --yes openjdk*
add-apt-repository --yes ppa:webupd8team/java
apt-get update
apt-get install --yes --force-yes oracle-java7-installer

echo ""
echo " Downloading and installing QFitsView for FITS data visualization." 
echo ""
wget http://www.mpe.mpg.de/~ott/QFitsView/QFitsView_3.1.linux64 
chmod a+x QFitsView_3.1.linux64
mv QFitsView_3.1.linux64 /usr/bin/QFitsView
ln -s /usr/bin/QFitsView /usr/bin/qfitsview
rm QFitsView_3.1.linux64


