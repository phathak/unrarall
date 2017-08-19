#!/bin/bash

list=`find . -type f -name "*.rar"`

for line in $list; do

DEST=${line%/*}

unrar x $line .

rm -R $DEST

done