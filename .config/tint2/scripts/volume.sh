#!/bin/sh

if [[ "$(amixer sget Master | awk -F'[][]' '/Right:|Mono:/ && NF > 1 {print $4}')" = "on" ]]; then
    vol=$(amixer sget Master | awk -F'[][]' '/Right:|Mono:/ && NF > 1 {sub(/%/, ""); printf "%0.0f\n", $2}')

    icon=ﱝ
    if [[ ${vol} -ge 90 ]]; then
        icon=墳
    elif [[ ${vol} -ge 40 ]]; then
        icon=奔
    else
        icon=奄
    fi
    echo ${icon} ${vol}%
else
    echo ﱝ
fi