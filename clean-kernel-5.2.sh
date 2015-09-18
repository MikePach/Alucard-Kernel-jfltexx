#!/bin/bash

LANG=C

cp -pv .config .config.bkp;
make ARCH=arm CROSS_COMPILE=../../arm-eabi-5.2/bin/arm-eabi- mrproper;
cp -pv .config.bkp .config;
make clean;

# clean ccache
read -t 5 -p "clean ccache, 5sec timeout (y/n)?";
if [ "$REPLY" == "y" ]; then
	ccache -C;
fi;
