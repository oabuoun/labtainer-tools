#!/usr/bin/env bash

#	Change Default Keyboard to GB layout
echo "=== `date` : Change Default Keyboard to GB layout ==="
setxkbmap gb

echo "=== `date` : Adding the GB layout to all shells ==="
echo "setxkbmap gb" >> ~/.profile
echo "setxkbmap gb" >> ~/.bashrc

#	Change the VM timezone of Europe/London
echo "=== `date` : Change the VM timezone of Europe/London ==="
sudo timedatectl set-timezone Europe/London

#	Tell Zsh where to find the dot files
# echo "=== `date` : Tell Zsh where to find the dot files ==="
#echo "export ZDOTDIR=$HOME" >> /home/kali/.zshenv

mkdir $HOME/cyberspace
