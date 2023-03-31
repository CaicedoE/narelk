#! /bin/bash

# Ubuntu server installation from scratch for NARELK Web server.

echo 1. Updating and Upgrading Ubuntu server.
sudo apt update && sudo apt upgrade -y

echo 2. Cleaning after update/upgrade
sudo apt autoremove && sudo apt clean

echo 2. Installing Starship Shell.
curl -sS https://starship.rs/install.sh | sh
sleep 2

echo 3. Install base software needed.
sudo apt install python3 wget curl tree autojump git docker pip -y

echo 4. Install nginx 
sudo apt install nginx

echo 5. Install virtual environment.
sudo apt install python3-venv

cat instructions.txt

