#!/bin/bash
echo "Installing Sublime"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp/mount && \
curl https://download.sublimetext.com/Sublime\ Text\ 2.0.2.dmg > $temp/1.dmg && \
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg && \
cp -r $temp/mount/*.app /Applications && \
hdiutil detach $temp/mount && \
rm -r $temp
