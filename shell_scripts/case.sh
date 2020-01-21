#!/bin/bash

echo "MAIN MENU"
echo "========="
echo "1) Addition"
echo "2) Substration"
echo "3) Multiplication"
echo ""
echo "Enter the choice: "
read MENUCHOICE


case $MENUCHOICE in
   1)
      echo "Enter the first number"
      read num1
      echo "Enter the Second number"
      read num2
      num=$((num1+num2))
      echo "Addition is: $num";;

   2)
      echo "Enter the first number"
      read num1
      echo "Enter the Second number"
      read num2
      num=$((num1-num2))
      echo $num;;

    3)
       echo "You made choice foe multiplication"

esac
