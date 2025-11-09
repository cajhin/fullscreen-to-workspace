#!/bin/sh

NAME=fullscreen-to-empty-workspace2@cajhin
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$SCRIPT_DIR/../src"

rm -rf ~/.local/share/gnome-shell/extensions/$NAME
cp -r "$SRC_DIR" ~/.local/share/gnome-shell/extensions/$NAME
