#!/bin/bash

# Imports
source common.sh

# Vars
_ASTUDIO_PARENT=$HOME/dev/
_ASTUDIO_PATH=${_ASTUDIO_PARENT}android-studio/
_ASTUDIO_PREFIX='android-studio-ide-'
_ASTUDIO_VERSION='183.5692245-linux.tar.gz'
_ASTUDIO_PACKAGE=${_ASTUDIO_PREFIX}${_ASTUDIO_VERSION}
_ASTUDIO_URL='https://dl.google.com/dl/android/studio/ide-zips/3.4.2.0/'${_ASTUDIO_PACKAGE}


# Install dependencies
if [ $(osIsUbuntu) -gt 0 ]; then
    sudo apt-get install -y lib32z1 lib32ncurses5 libbz2-1.0 lib32stdc++6
else
    echo -e 'Dependencies may not be satisfied because your current \n'
    echo -e '\tlinux distribution is not fully supported.\n'
fi


# Install android-studio
mkdir -p ${_ASTUDIO_PATH}
cd ${_ASTUDIO_PARENT} &&
    wget -c ${_ASTUDIO_URL} -O ${_ASTUDIO_PARENT}${_ASTUDIO_PACKAGE} &&
    tar xzvf ${_ASTUDIO_PACKAGE}


# Add android-studio to .bashrc
updatePath $HOME/.bashrc ${_ASTUDIO_PATH}bin '# Android-studio path'
