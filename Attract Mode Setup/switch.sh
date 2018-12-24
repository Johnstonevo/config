#!/bin/bash
# This script will switch between a Simple and Nested layout
# Author: Mik McLean
# Made for Hyperpie
# https://www.hyperpie.org

file=/home/pi/.attract/attract.cfg

sed -i '15,$ { /in_menu/s/\byes\b/test_no/g }' $file
sed -i '15,$ { /in_menu/s/\bno\b/yes/g }' $file
sed -i '15,$ { /in_menu/s/\btest_no\b/no/g }' $file


reboot
