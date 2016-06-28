#!/bin/bash

for i in *HelloWorld; do
	cd $i
	swift build -Xcc -fblocks -Xlinker -ldispatch
	cd ..
done