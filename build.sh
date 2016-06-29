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

for hw in */.build/debug/*HelloWorld; do
	./$hw < /dev/null 1>&2 &
done
