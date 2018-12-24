#!/bin/bash

echo_c()
{
  w=$(stty size | cut -d" " -f2)       # width of the terminal
  l=${#1}                              # length of the string
  printf "%"$((l+(w-l)/2))"s\n" "$1"   # print string padded to proper width (%Ws)
}


sleep 5
  title="How to Submit a Theme"
  clear
  ast="*********************************************************"
 
one="Prepare your theme and zip it into a zip file"
two="Send an email to blah@blah.com with the details of your Theme"
three="blah blah blah"
four="Blah Blah Blah"
five="This is the 5th Line"
six="This is the 6th Line and so on....."
blank=" "



columnas=$(tput cols)
  y=$((($columnas-${#ast})/2))
  x=0
  tput clear
  tput cup $x $y
  echo "${ast}"
  echo ""
  y=$((($columnas-${#title})/2))
  x=1
  tput cup $x $y
  echo "${title}"
  echo ""
  y=$((($columnas-${#ast})/2))
  x=2
  tput cup $x $y
  echo "${ast}"
  echo ""
  echo ""
  y=$((($columnas-${#blank})/2))
  x=3
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#blank})/2))
  x=4
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#one})/2))
  x=5
  tput cup $x $y
  echo "${one}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#blank})/2))
  x=6
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#two})/2))
  x=7
  tput cup $x $y
  echo "${two}"
  echo ""
  echo ""
  y=$((($columnas-${#blank})/2))
  x=8
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#three})/2))
  x=9
  tput cup $x $y
  echo "${three}"
  echo ""
  echo ""
  y=$((($columnas-${#blank})/2))
  x=10
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#four})/2))
  x=11
  tput cup $x $y
  echo "${four}"
  echo "" 
  echo ""
  y=$((($columnas-${#blank})/2))
  x=12
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""
  y=$((($columnas-${#five})/2))
  x=13
  tput cup $x $y
  echo "${five}"
  echo ""
  echo ""
  y=$((($columnas-${#blank})/2))
  x=14
  tput cup $x $y
  echo "${blank}"
  echo -e "\n\n"
  echo ""  
  y=$((($columnas-${#six})/2))
  x=15
  tput cup $x $y
  echo "${six}"
  echo ""
  echo ""

echo_c "Hello"
echo
echo_c "More Text"
echo
echo
echo_c "more text"







sleep 10
clear

