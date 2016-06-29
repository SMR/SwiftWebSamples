#!/bin/bash

for i in *HelloWorld; do
	cd $i
	if [ -f Makefile ] ; then
		make
	else
		swift build 
	fi
	cd ..
done
