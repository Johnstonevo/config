#!/bin/bash
# This script will switch between a Simple and Nested layout
# Author: Mik McLean
# Made for Hyperpie
# https://www.hyperpie.org

rm -rf "/home/pi/.attract/layouts/hurstyblue_main"
mkdir -p "/home/pi/.attract/layouts"
git clone "https://github.com/dmmarti/am-theme-hurstyblue_main.git" "/home/pi/.attract/layouts/hurstyblue_main"
