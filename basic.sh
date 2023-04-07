#!/bin/bash
#Script for setting up a basic user enviorment 

mkdir Games Projects Downloads Temp Pictures Videos Documents Music

pkgs=(
    "vi"
    "firefox"
    "thunderbird"
    "pipewire"
    "wirepumber"
    "easyeffects"
    #Arch Wiki talks about saving album covers
    "yt-dlp"
    "ffmpeg"
    "htop"
    "mpv"
    "udisks2"
    "udiskie"
    "tlp"
)

for i in "${pkgs[@]}"
do
   pacman -S --needed --noconfirm $i
done

systemctl mask systemd-rfkill.service
systemctl mask systemd-rfkill.socket
systemctl enable tlp.service
