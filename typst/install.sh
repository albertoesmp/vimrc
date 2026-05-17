#!/bin/bash

# -----------------------------------------------------
# Author: A. M. Esmoris
# NOTE that to install typst sudo is often required.
# -----------------------------------------------------

# ---  CONSTANTS  --- #
FNAME='typst-x86_64-unknown-linux-musl'
TAR_XZ="${FNAME}.tar.xz"
# ---   MAIN   --- #
# Download
wget -c "https://github.com/typst/typst/releases/download/v0.14.2/${TAR_XZ}"
# Unpackage
tar xvf "${TAR_XZ}"
# Install
cd "${FNAME}"
cp "${PWD}/typst" "/usr/bin/typst"
cd ..
# Remove stuff after install
rm -f "${TAR_XZ}"
rm -fr "${FNAME}"
