#!/bin/bash

# Imports
source common.sh


# Vars
_FLUTTER_PARENT=$HOME/dev/
_FLUTTER_PATH=${_FLUTTER_PARENT}flutter/
_FLUTTER_PREFIX='flutter_linux_'
_FLUTTER_VERSION='v1.7.8+hotfix.4-stable.tar.xz'
_FLUTTER_PACKAGE=${_FLUTTER_PREFIX}${_FLUTTER_VERSION}
_FLUTTER_URL='https://storage.googleapis.com/flutter_infra/releases/stable/linux/'$_FLUTTER_PACKAGE


# Install dependencies
if [ $(osIsUbuntu) -gt 0 ]; then
    sudo apt-get install -y curl git unzip xz-utils libglu1-mesa
else
    echo -e 'Dependencies may not be satisfied because your current \n'
    echo -e '\tlinux distribution is not fully supported.\n'
fi


# Install flutter
echo 'Installing ...'
mkdir -p $_FLUTTER_PATH
err1=$?
echo 'Downloading ...'
wget -c $_FLUTTER_URL -O ${FLUTTER_PARENT}${_FLUTTER_PACKAGE}
err2=$?
echo 'Downloaded ('$err2')!'
echo 'Unpacking, precaching and doctoring ...'
echo ${_FLUTTER_PARENT}${_FLUTTER_PACKAGE}
cd $_FLUTTER_PARENT && \
    tar xf ${_FLUTTER_PACKAGE}
err3=$?
echo 'Unpacking, precaching and doctoring ('$err3')!'
if [ $err1 -eq 0 ] && [ $err2 -eq 0 ] && [ $err3 -eq 0 ]; then
    echo 'Installation finished! (:'
else
    echo 'Installation failed!   ):'
    exit 2
fi



# Add flutter to .bashrc
updatePath $HOME/.bashrc "${_FLUTTER_PATH}bin" "# Flutter path"


# Flutter precache
flutter precache
err4=$?
if [ $err4 -ne 0 ]; then
    echo 'flutter precache operation FAILED   :('
    exit 3
fi


# Flutter doctor
flutter doctor
