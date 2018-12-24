#!/bin/bash
# This script will switch between a Simple and Nested layout
# Author: Mik McLean
# Made for Hyperpie
# https://www.hyperpie.org

rm -rf "/home/pi/.attract/layouts/comiccrazy_menu"
mkdir -p "/home/pi/.attract/layouts"
git clone "https://github.com/RetroHursty69/am-theme-comiccrazy_menu.git" "/home/pi/.attract/layouts/comiccrazy_menu"
