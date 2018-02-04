#!/bin/sh

echo "updating checksums"
updpkgsums
echo "installing st"
makepkg -sifC --noconfirm
