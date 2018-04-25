#!/bin/sh

if [ -d "/mnt/Data/System Volume Information" ]; then
    rm -r "/mnt/Data/System Volume Information"
fi

if [ -d "/mnt/Data/\$RECYCLE.BIN" ]; then
    rm -r "/mnt/Data/\$RECYCLE.BIN"
fi

if [-f "/mnt/Data/bootsqm.dat" ]; then
    rm "/mnt/Data/bootsqm.dat"
fi

