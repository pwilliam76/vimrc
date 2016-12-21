#!/bin/bash

sudo apt-get remove vim-tiny
apt-get update
apt-get install vim


if which apt-get > /dev/null then
    sudo apt-get install -y ctags build-essential cmake python-dev python3-dev fontconfig git
    var=$(sudo cat /etc/lsb-release | grep "DISTRIB_RELEASE")

fi
