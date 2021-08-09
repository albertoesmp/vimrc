#/bin/bash

MOUSEID=9

ACCEL_PROF=$(xinput list-props ${MOUSEID} | grep -i "Accel Profile Enabled" | grep -vi Default | awk '{print $5}' | tr -d '():')
ACCEL_SPEED=$(xinput list-props ${MOUSEID} | grep -i "Accel Speed" | grep -vi Default | awk '{print $4}' | tr -d '():')

xinput set-prop ${MOUSEID} ${ACCEL_PROF} 0, 1
xinput set-prop ${MOUSEID} ${ACCEL_SPEED} 0.0

