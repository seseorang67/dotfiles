#!/bin/bash

EWW_BIN="/usr/bin/eww" # Akan diupdate setelah pengecekan

if ${EWW_BIN} active-windows | grep -q "image_popup"; then
    ${EWW_BIN} close image_popup
else
    ${EWW_BIN} open image_popup
fi
