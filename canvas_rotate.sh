#!/bin/bash

if [ -z "$1" ]; then
  echo "Please provide the path to log limit"
  exit 1;
fi

for file in $1; do
  size=$(du -sm $file | cut -f1)
  if [ $size -gt 1000 ] && ! [ $file = *".bak" ]; then
    rm -f $file.bak
    mv $file ${file%%}.bak
  fi
done

rm -f *.bak.bak
