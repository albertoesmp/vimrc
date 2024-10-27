#!/bin/bash

# ----------------------------------------------------------- #
# MAIN ENTRY POINT to install most software and configure it. #
# Call THIS from the vimrc root directory.                    #
# ----------------------------------------------------------- #
# The preferred python interpreter
PYTHON='python3'


# Ubuntu dependencies
ubuntu/ubuntu_deps.sh

# Configure vim
cp vimrc ~/.vimrc
./vundle_install.sh
vim -c VundleInstall -c qa
${PYTHON} ~/.vim/bundle/YouCompleteMete/install.py
vim -c "call mkdp#util#install()" -c qa

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
    sudo cp powerline/colorschemes/default.json \
        /usr/share/powerline/config_files/colorschemes/default.json
    sudo cp powerline/colorschemes/themes/shell/__main__.json \
        /usr/share/powerline/config_files/themes/shell/__main__.json
fi

# Configure XFCE4 GTK theme
cd theme
./install.sh
cd ..



