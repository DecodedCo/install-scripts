#!/bin/bash
echo "Installing Iterm2"
temp=$TMPDIR$(uuidgen) && \
mkdir -p $temp && \
curl https://iterm2.com/downloads/stable/iTerm2-2_1_4.zip > $temp/1.zip && \
unzip $temp/1.zip -d /Applications && \
rm -r $temp
