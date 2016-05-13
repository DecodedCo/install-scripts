#!/bin/bash
echo "Installing Arduino IDE"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp && \
curl https://downloads.arduino.cc/arduino-1.6.7-macosx.zip > $temp/1.zip && \
unzip $temp/1.zip -d /Applications && \
rm -r $temp
