#!/bin/bash
echo "Installing Google Chrome"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp/mount && \
curl -L https://download.mozilla.org/?product=firefox-44.0-SSL&os=osx&lang=en-US > $temp/1.dmg && \
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg && \
cp -r $temp/mount/*.app /Applications && \
hdiutil detach $temp/mount && \
rm -r $temp
