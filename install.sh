#!/bin/bash
#Script for setting up WM

pkgs=(
    "xorg"
    "xorg-xinit"
    "i3"
    "demu"
    "xterm"
    "feh"
    "gtk3"
    "flameshot"
    "neofetch"
    "noto-fonts"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
)

for i in "${pkgs[@]}"
do
   pacman -S --needed --noconfirm $i
done

#Check out i3status-rust and st
cp ./dotfiles/i3-config ~/.config/i3/config
cp ./dotfiles/flameshot.config ~/.config/flameshot/flameshot.ini
cp ./dotfiles/gtk3-config ~/.config/gtk-3.0/settings.ini
cp ./dotfiles/bashrc ~/.bashrc
cp ./dotfiles/xinitrc ~/.xinitrc
cp ./dotfiles/Xresources ~/.Xresources


read -p "Desktop? [y/n]: " isDesktop
