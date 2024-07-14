#!/bin/sh
# Find and upload Arduino firmware for PTS200 Soldering Iron.
# Ewan Parker created 14th July 2024.

BIN=$(find /tmp -name "*.ino.bin" 2>/dev/null)
if [ $(echo $BIN | wc -w) -ne 1 ]; then
  echo "0 or more than 1 firmwares found: $BIN" >&2
  exit 1
fi

cp $BIN /media/*/disk
