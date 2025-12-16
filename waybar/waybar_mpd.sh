#!/bin/bash

# Periksa status MPD
STATUS=$(mpc status | head -n 2 | grep -o '\[.*\]' | tr -d '[]')

if [ "$STATUS" = "" ]; then
    mpc play
    notify-send "MPD" "Dijeda" # Opsional: notifikasi
elif [ "$STATUS" = "playing" ]; then
    mpc pause
    notify-send "MPD" "Memutar" # Opsional: notifikasi
elif [ "$STATUS" = "paused" ]; then
    mpc play
else
    mpc play
    notify-send "MPD" "Mulai Memutar" # Opsional: notifikasi
fi
