#!/bin/sh
# use -pvc for watch mode
latexmk -pdf $1 ./main.tex
