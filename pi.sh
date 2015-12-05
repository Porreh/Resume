#!/bin/bash
# -*- Mode: sh; coding: utf-8; indent-tabs-mode: nil; tab-width: 4 -*-

sudo apt-get update
sudo apt-get dist-upgrade

#...................................#
#         Add Repositories          #
#...................................#

sudo add-apt-repository "deb http://archive.canonical.com/ $(lsb_release -sc) partner"
sudo add-apt-repository ppa:elementary-os/daily
sudo add-apt-repository ppa:mpstark/elementary-tweaks-daily
sudo apt-add-repository ppa:ricotz/docky
sudo add-apt-repository ppa:evolve-os/ppa
sudo add-apt-repository ppa:nilarimogard/webupd8

sudo apt-get update

#.......................................#
#         Install applications          #
#.......................................#

sudo apt-get install mdm ubuntu-mdm-themes budgie-desktop plank 

#.......................................#
#               Cleaning                #
#.......................................#

sudo apt-get autoremove
sudo apt-get clean
sudo apt-get autoclean
