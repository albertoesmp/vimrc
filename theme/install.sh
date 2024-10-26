#!/bin/bash

# -----------------------------------------------
# Author: A. M. Esmoris
# Script to install the XFCE4 simple golden-dark
# theme
# -----------------------------------------------


# -------------- #
# ---  VARS  --- #
# -------------- #
THEME_FOLDER='Xfce-Simple-GoldenDark'
THEME_ZIP='Xfce-Simple-GoldenDark.zip'
THEMES_DIR="${HOME}/.themes/"
INSTALLED_THEME_FOLDER="${THEMES_DIR}/${THEME_FOLDER}"

# --------------- #
# ---  LOGIC  --- #
# --------------- #
mkdir -p "${THEMES_DIR}"  # Make themes dir if necessary
unzip "${THEME_ZIP}"  # Generates theme folder
mv "${THEME_FOLDER}" "${THEMES_DIR}"  # Install theme folder

