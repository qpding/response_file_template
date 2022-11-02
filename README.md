# response_file_template

This is a LaTeX template of response files for academic papers.

## Directory Structure
The main file and ref.bib file are put in the root directory for compatibility reasons with Overleaf.
All the other tex files go to ./tex, and all the figures go to ./figures.
The intermediate files go to ./build, but the final pdf file (main.pdf) will be moved out to the root directory.

## Usage
This section is only useful to command line monkeys like me.
```
chmod +x ./compile.sh  # Change permission if necessary
./compile.sh  # Compile your files
./compile.sh -c  # Clear intermediate files. This is equivalent with the -c option in latexmk
```
