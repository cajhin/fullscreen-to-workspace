#!/bin/bash
# Quick reload script for extension development

EXT_UUID="fullscreen-to-empty-workspace2@cajhin"

echo "Reloading extension: $EXT_UUID"
gnome-extensions disable "$EXT_UUID" 2>&1
sleep 0.5
gnome-extensions enable "$EXT_UUID" 2>&1

echo ""
echo "Checking for errors in the last 10 lines:"
journalctl -b -o cat /usr/bin/gnome-shell 2>&1 | grep -i "cajhin\|fullscreen-to-empty" | tail -10
