#!/bin/bash
# This script will switch between a Simple and Nested layout
# Author: Mik McLean
# Made for Hyperpie
# https://www.hyperpie.org

rm -rf "/home/pi/.attract/layouts/HP2-Main-Menu"
mkdir -p "/home/pi/.attract/layouts"
git clone "https://github.com/calle81/am-theme-HP2-Main-Menu.git" "/home/pi/.attract/layouts/HP2-Main-Menu"
