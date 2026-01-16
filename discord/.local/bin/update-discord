#!/bin/bash

TMP_DIR="$(mktemp -d)"

wget --no-verbose -O $TMP_DIR/discord.tar.gz "https://discord.com/api/download?platform=linux&format=tar.gz"

tar -xf $TMP_DIR/discord.tar.gz -C $TMP_DIR/

cp -fR $TMP_DIR/Discord/* ~/apps/discord/

rm -fR $TMP_DIR
