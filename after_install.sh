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
sudo apt-get update

echo " Installing aptitude."
sudo apt-get install aptitude

echo " Installing Python and Python Libs, graphical editors, latex, etc."
sudo aptitude install \
 python-dev \
 python-numpy \
 python-scipy \
 python-matplotlib \
 python-pyfits \
 python-pip \
 ipython \
 vim \
 vim-addon-manager \
 vim-python-jedi \
 vlc \
 git \
 inkscape gimp gphoto2 \
 texlive-latex-base-doc \
 texlive-latex-recommended \
 texlive-latex-recommended-doc \
 texlive-latex-extra \
 texlive-latex-extra-doc \
 texlive-lang-portuguese \
 kile \
 guake \
 okular \
 remmina remmina-plugin-vnc \
 nfs-common nfs-client nfs-server \
 saods9 \
 vpnc

echo " Downloading and installing QFitsView for FITS data visualization." 
wget http://www.mpe.mpg.de/~ott/QFitsView/QFitsView_3.1.linux64 
sudo chmod a+x QFitsView_3.1.linux64
sudo cp QFitsView_3.1.linux64 /usr/bin/QFitsView
sudo ln -s /usr/bin/QFitsView /usr/bin/qfitsview
rm QFitsView_3.1.linux64

sudo pip install numpy --upgrade
sudo pip install scipy --upgrade
sudo pip install matplotlib --upgrade
sudo pip install astropy --upgrade
sudo pip install watchdog --upgrade
sudo pip install argparse --upgrade
