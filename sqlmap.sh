#!/bin/bash
echo "Installing SQLMap"
temp=/tmp/$(uuidgen) && \
mkdir -p $temp && \
curl -L https://github.com/sqlmapproject/sqlmap/archive/master.zip > $temp/1.zip && \
unzip $temp/1.zip -d /usr/local && \
chmod -R +x /usr/local/sqlmap-master/* && \
ln -s /usr/local/sqlmap-master/sqlmap.py /usr/local/bin/sqlmap
