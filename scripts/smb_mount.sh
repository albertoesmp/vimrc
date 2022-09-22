#!/bin/bash


if [ $# != 3 ]; then
    cat << EOF
Mounting a samba shared directory requires three argument:

    1 -> The username
    2 -> The samba URL to be mounted
    3 -> The path where the shared directory must be mount

EOF
    exit
fi

sudo mount -t cifs -o rw,vers=3.0,username="${1}" "${2}" "${3}"
