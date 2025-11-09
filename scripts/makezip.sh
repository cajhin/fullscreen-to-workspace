#!/bin/sh

NAME=macos-style-workspaces@cajhin
DIR=src
pushd $DIR
zip -r $NAME.zip *
popd
mkdir -p build
mv $DIR/$NAME.zip build/$NAME.zip

