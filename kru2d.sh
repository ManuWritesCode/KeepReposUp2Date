############################################################################################################
# 
# Keep Repos Up to Date
# 
# This Bash script helps you to keep all your Github repositories on your local computers up to date.
#
# Developped by : BOIDIN Emmanuel (@ManuWritesCode)
# Version       : 1.0.0
# Created on    : 11/03/2025 (english format)
#
#
# Copyright (C) 2025 Emmanuel BOIDIN
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.

# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
#
###########################################################################################################

#!/bin/bash

## VARIABLES ##

# Hostname of the computer
HOSTNAME=$(hostname)

# Text colors
COLOR_RESET='\033[0m'
COLOR_RED='\033[1;31m'
COLOR_GREEN='\033[1;32m'

## MAIN ##
case $HOSTNAME in
    "Thanatos")
        # Desktop at work
        DEV_PATH="/VOLUMES/DEV"
        ;;
    "acropolix-lab")
        # Desktopp at home
        DEV_PATH="/VOLUME/DEV"
        ;;
    "Sakura")
        #Macbook Pro
        DEV_PATH=""
        ;;
    *)
        echo "This script is not intended to be run on this computer."
        ;;
esac

cd $DEV_PATH

for repo in `gh repo list --json name --jq ".[].name"`;
do
    if [ -d "$repo" ];
    then
        # The local repo exists, we can update it via git pull command
        echo "$COLOR_GREEN Updating $repo... $COLOR_RESET";
        cd $repo
        git pull
        cd ..
    else
        # The local repo does not exist. We clone the Github repo via git clone
        echo "$COLOR_GREEN Cloning $repo... $COLOR_RESET";
        gh repo clone $repo 
    fi
done