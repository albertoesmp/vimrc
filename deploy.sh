#!/bin/bash

# ----------------------------------------------------------- #
# MAIN ENTRY POINT to install most software and configure it. #
# Call THIS from the vimrc root directory.                    #
# ----------------------------------------------------------- #


# Ubuntu dependencies
ubuntu/ubuntu_deps.sh

# Configure vim
cp vimrc ~/.vimrc
./vundle_install.sh
vim -c VundleInstall -c qa

# Configure terminator
mkdir -p ~/.config/terminator/
cp terminator/gtk.css ~/.config/gtk-3.0/gtk.css
cp terminator/config ~/.config/terminator/config

# Enable gitlog alias
cat << EOF >> ~/.bashrc
# ------------------ #
# MY CUSTOM BASHRC   #
# ------------------ #
EOF
cat context.sh >> ~/.bashrc

# Enable and config powerline
if (( $(grep 'powerline' ~/.bashrc | wc -c) < 1 )); then
    echo 'source /usr/share/powerline/bindings/bash/powerline.sh' >> ~/.bashrc
    sudo cp powerline/colorschemes/shell/default.json \
            /usr/share/powerline/config_files/colorschemes/shell/default.json
fi

# Configure XFCE4 GTK theme
cd theme
./install.sh
cd ..



