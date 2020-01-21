#!/bin/bash


while true; do
    read -p "Do you wish to update your system?" yn
    case $yn in
        [Yy]* ) sudo apt-get update; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done



echo "Enter which package name that you want search:"
read package_name

while true; do
    read -p "Do you want to search for the package?" yn
    case $yn in
        [Yy]* ) sudo apt-get search $package_name; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done


while true; do
    read -p "Do you want to install package?" yn
    case $yn in
        [Yy]* ) sudo apt-get install $package_name; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you want to check installed packages?" yn
    case $yn in
        [Yy]* ) dpkg-query -l | grep $package_name; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

while true; do
    read -p "Do you want to check list all the file of an installed packages?" yn
    case $yn in
        [Yy]* ) dpkg-query -L grep $package_name; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

