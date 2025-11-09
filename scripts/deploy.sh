#!/bin/sh

NAME=macos-style-workspaces@cajhin
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
SRC_DIR="$SCRIPT_DIR/../src"

rm -rf ~/.local/share/gnome-shell/extensions/$NAME
cp -r "$SRC_DIR" ~/.local/share/gnome-shell/extensions/$NAME

# Compile schemas
if [ -d ~/.local/share/gnome-shell/extensions/$NAME/schemas ]; then
    glib-compile-schemas ~/.local/share/gnome-shell/extensions/$NAME/schemas/
fi
