#!/bin/bash

# --- COMMON FUNCTIONS --- #
# ------------------------ #
function osIsUbuntu {
    status=$(cat /etc/os-release  | grep -i ubuntu | wc -c)
    if [ $status -eq 0 ]; then
        # Not ubuntu
        echo 0
        return 0
    else
        # Yes ubuntu
        echo 1
        return 1
    fi
}

function updatePath {
    check=$(grep "$3" "$1" | wc -c)
    if [ $check -ne 0 ]; then
        return 0
    fi

    cat << EOF >> $1

$3
export PATH=\$PATH:$2

EOF
}
