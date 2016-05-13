#!/bin/bash
echo "Installing Wireshark"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp/mount && \
curl https://1.eu.dl.wireshark.org/osx/Wireshark%202.0.1%20Intel%2064.dmg > $temp/1.dmg && \
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg && \
cp -r $temp/mount/*.app /Applications && \
hdiutil detach $temp/mount && \
rm -r $temp
