#!/bin/sh

echo Create first library: fitch
cc -fPIC -shared -o fitch.so dist.c phylip.c fitch.c

echo Copy library to bin
cp fitch.so ../bin

echo Create second library: drawtree
cc -fPIC -shared -o drawtree.so draw.c draw2.c phylip.c drawtree.c

echo Copy library to bin
cp drawtree.so ../bin
