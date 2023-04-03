#!/bin/bash

#Script for installing the needed packages

pkgs=(
    "xorg"
    "xorg-xinit"
    "i3"
    "demu"
    "xterm"
    "feh"
    "gtk3"
    "flameshot"
    "noto-fonts"
    "noto-fonts-cjk"
    "noto-fonts-emoji"
)

for i in "${pkgs[@]}"
do
   pacman -S --needed --noconfirm $i
done

cp ./dotfiles/i3-config ~/.config/i3/config
cp ./dotfiles/flameshot.config ~/.config/flameshot/flameshot.ini
cp ./dotfiles/gtk3-config ~/.config/gtk-3.0/settings.ini
cp ./dotfiles/bashrc ~/.bashrc
cp ./dotfiles/xinitrc ~/.xinitrc
cp ./dotfiles/Xresources ~/.Xresources
