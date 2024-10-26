#!/bin/bash

# Backup grub config
if [[ ! -f /etc/default/grub.bk ]]; then
    sudo cp /etc/default/grub /etc/default/grub.bk
fi

# Modify grub config
sed 's/\(GRUB_DEFAULT=\)\(.*\)$/\1saved/g' /etc/default/grub > grub.custom
sudo sed 's/\(GRUB_TIMEOUT=\)\(.*\)$/\160/g' grub.custom > /etc/default/grub
rm -f grub.custom

# Add path to wallpaper
GRUB_CFG='/etc/default/grub'
sudo cat << EOF >> ${GRUB_CFG}

# Custom background
GRUB_BACKGROUND=${PWD}/grub_bg.png
EOF

# Change grub colors
sudo cat << EOF >> /etc/grub.d/40_custom
#  CUSTOM COLORS  #
# --------------- #
set menu_color_normal="yellow/black"
set menu_color_highlight="black/yellow"
set color_normal="yellow/black"
EOF

# Make grub updates effective
sudo update-grub
