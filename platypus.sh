#!/bin/bash
echo "Installing Platypus"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp/extracted && \
curl http://www.sveinbjorn.org/files/software/platypus.zip > $temp/1.zip && \
unzip $temp/1.zip -d $temp/extracted && \
cp $temp/extracted/Platypus /Applications && \
rm -r $temp
