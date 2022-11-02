#!/bin/sh
# use -pvc for watch mode
if [ ! -d "./build" ]
then
	mkdir build
	mkdir build/tex
fi
latexmk -pdf -outdir=build $1 ./main.tex
mv build/main.pdf main.pdf
