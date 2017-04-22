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
apt-get install python-pip
pip install numpy
pip install scipy
pip install matplotlib
pip install astropy
pip install pandas
pip install statsmodels
pip install seaborn
pip install cython
pip install pymc
pip install pystan
pip install pyfits
pip install pyjags

# Version controler
apt-get install git 

# Photo/Drawing
apt-get install inkscape gimp gphoto2 ufraw gimp-ufraw

# TeX
apt-get install texlive-latex-base-doc texlive-latex-recommended texlive-latex-recommended-doc texlive-latex-extra texlive-latex-extra-doc texlive-lang-portuguese texlive-science latex-beamer kile texlive-latex3  texlive-latex-extra texlive-latex3  texlive-latex-extra texlive-math-extra texlive-math-extra

# PDF reader
apt-get install --yes --force-yes okular 

# Before installing IRAF
apt-get install csh saods9

# Cisco VPN client
apt-get install --yes --force-yes vpnc  

# Before install PyRAF
apt-get install xorg-dev libx11-dev 

# Drop and Virtual Boxes
apt-get install --yes --force-yes dropbox virtualbox virtualbox-guest-utils 

# Zip and Unzip
apt-get install --yes --force-yes p7zip-full atool

# Documents/References handling
apt-get install mendeleydesktop 
 
# Web Design
apt-get install --yes --force-yes npm node
npm install -g bower
bower install material-design-icons

echo ""
echo " Installing R"
echo ""
sudo apt-get install r-base
# For installing RStudio, download it directly from the website

echo ""
echo " Installing Oracle Java"
echo ""
apt-get purge --yes openjdk*
add-apt-repository --yes ppa:webupd8team/java
apt-get update
apt-get install --yes --force-yes oracle-java7-installer
