#!/bin/bash

if which apt-get > /dev/null then
    sudo apt-get install -y ctags build-essential cmake python-dev python3-dev fontconfig git
    var=$(sudo cat /etc/lsb-release | grep "DISTRIB_RELEASE")

fi
