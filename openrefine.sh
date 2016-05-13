#!/bin/bash
echo "Installing Open Refine"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp/mount && \
curl -L https://github.com/OpenRefine/OpenRefine/releases/download/2.6-beta.1/openrefine-mac-2.6-beta.1.dmg > $temp/1.dmg && \
yes | hdiutil attach -noverify -nobrowse -mountpoint $temp/mount $temp/1.dmg && \
cp -r $temp/mount/*.app /Applications && \
hdiutil detach $temp/mount && \
rm -r $temp
