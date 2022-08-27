#!/bin/bash

# -----------------------------------------------
# Author: A. M. Esmoris
# Script to install the XFCE4 simple dark theme
# -----------------------------------------------


# -------------- #
# ---  VARS  --- #
# -------------- #
THEME_FOLDER='Xfce-Simple-Dark-10'
THEME_ZIP='Xfce-Simple-Dark-v10.zip'
THEMES_DIR="${HOME}/.themes/"
INSTALLED_THEME_FOLDER="${THEMES_DIR}/${THEME_FOLDER}"

# --------------- #
# ---  LOGIC  --- #
# --------------- #
mkdir -p "${THEMES_DIR}"  # Make themes dir if necessary
unzip "${THEME_ZIP}"  # Generates theme folder
mv "${THEME_FOLDER}" "${THEMES_DIR}"  # Install theme folder
mv "${INSTALLED_THEME_FOLDER}/Xfce-Simple-Dark_xfwm"* "${THEMES_DIR}"
mv "${INSTALLED_THEME_FOLDER}/Xfce-Simple-Dark_widgets" "${THEMES_DIR}"

