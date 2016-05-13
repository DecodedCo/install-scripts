#!/bin/bash
echo "Installing Virtual Box"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp/mount && \
curl http://download.virtualbox.org/virtualbox/5.0.20/VirtualBox-5.0.20-106931-OSX.dmg > $temp/1.dmg && \
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg && \
installer -pkg $temp/mount/*.pkg -target /
hdiutil detach $temp/mount && \
rm -rf $temp