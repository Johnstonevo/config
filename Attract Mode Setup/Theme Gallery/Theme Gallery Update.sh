#!/bin/bash
# This script will switch between a Simple and Nested layout
# Author: Mik McLean
# Made for Hyperpie
# https://www.hyperpie.org

rm -rf /home/pi/.attract/Attract\ Mode\ Setup/Theme\ Gallery/flyers
rm -rf /home/pi/.attract/Attract\ Mode\ Setup/Theme\ Gallery/*.sh
mkdir -p /home/pi/.attract/themefiles
git clone https://github.com/hyperpie/hp2_theme_gallery.git "/home/pi/.attract/themefiles/"
cp -r /home/pi/.attract/themefiles/* /home/pi/.attract/
rm -rf /home/pi/.attract/themefiles
