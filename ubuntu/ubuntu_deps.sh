#!/bin/bash

# --- Update repositories --- #
# --------------------------- #
sudo apt-get update -y

# --- General install --- #
# ----------------------- #
sudo apt-get install -y git vim vlc build-essential terminator htop powerline fonts-powerline exuberant-ctags zip unzip rar unrar ffmpeg python3-pip openjdk-21-* geany curl gimp ttf-mscorefonts-installer inkscape gthumb evince okular texstudio texstudio-doc texlive texlive-full texlive-base texlive-bibtex-extra  texlive-extra-utils texlive-fonts-* texlive-formats* texlive-lang-spanish texlive-lang-english texlive-latex-* texlive-pictures* texlive-science* texlive-publishers* libnss3-tools virtualenv jupyter-notebook cmake openmpi* libopenmpi* libopenblas64* libqhull-dev libqhull8.0 liblapack64* zlib1g zlib1g-dev wine64 winetricks wine64-preloader 7zip 7zip-rar git-lfs equalx graphviz xdot dot2tex npm yarnpkg poppler-utils qt5-style-plugins doxygen screen

# --- Curl install --- #
# -------------------- #
# Node Version Manager
curl -fsSL https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
# Claude code
curl -fsSL https://claude.ai/install.sh | bash

# --- Node packages --- #
# --------------------- #
# Markdown server
npm install -g markserv
# Goole gemini
npm install -g @google/gemini-cli
