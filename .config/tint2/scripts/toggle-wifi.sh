#!/bin/bash

if [ "$(nmcli radio wifi)" == "enabled" ]
then
    notify-send -i network-wireless-none  "Wifi disabled"
    nmcli radio wifi off
else
    notify-send -i network-wireless-none  "Wifi enabled"
    nmcli radio wifi on
fi