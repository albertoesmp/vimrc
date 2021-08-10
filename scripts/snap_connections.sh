#!/bin/bash

# Add snap connections

CONNECTING='YES'

echo -e 'PLUG EXAMPLE: cloudcompare:removable-media\n'

while [[ $CONNECTING == 'YES' ]]; do
    echo -e 'Snap connections list:\n'
    snap connections
    echo -e "\n========================================\n\n"
    echo -n 'Type the snap plug with syntax: <app>:<interface>: '
    read plug
    echo 'Plugging "'$plug'" ...'
    snap connect $plug
    echo 'Do you want to plug something else? [Y/n]  '
    read moreplugs
    if [[   $moreplugs == 'n' || $moreplugs == 'N' || \
            $moreplugs == 'No' || $moreplugs == 'NO' || \
            $moreplugs == 'no' || $moreplugs == 'nO' \
    ]]; then
        CONNECTING='NO'
    fi

done

