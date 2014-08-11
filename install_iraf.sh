#!/bin/bash
## 
## IRAF Install Script 
##
## Run this script in a terminal once you have finished your Ubuntu 14.04 or
## Linux Mint 17 installation to install IRAF in your system.
##
reset
echo ""
echo "                    IRAF Install Script."
echo "              Department of Astronomy - IAG/USP"
echo "          by Bruno Quint <bquint at astro.iag.usp.br"
echo ""

## Are you root?
if [[ $EUID -ne 0 ]]; then
    echo " I'm sorry but only root can run this script."
    echo " Leaving now."
    echo ""
    exit 1
fi

## Test if there is a previous IRAF installation in your machine first

## If found, do you want to remove it?

## If not, do you really want to proceed with installation?

## What is your processor's architecture?

## Where do you want to save the files?

## Download files from IRAF's webside

## Install it
apt-get install csh
ln -s /iraf/iraf/x11iraf/xgterm /usr/bin/xgterm

## Do you want to remove installation files?

## Installing UREKA package which contains STSDAS
mkdir -p /iraf/iraf/downloads
cd /iraf/iraf/downloads
wget http://ssb.stsci.edu/ureka/1.4.1/install_ureka_1.4.1
chmod a+x install_ureka_1.4.1

