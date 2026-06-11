# Response File Template

This is a LaTeX template of response files for academic papers.

## Using the Package

Copy `responsefile.sty` into the same directory as your main LaTeX file and
load it after the document class:

```latex
\documentclass[12pt,a4paper]{report}
\usepackage{responsefile}

\begin{document}
\reviewer{}

\begin{question}
The reviewer's comment.
\end{question}

\response
The author's response.

\begin{amendment}{2.1}{Methods}
Text added to the revised manuscript.
\end{amendment}
\end{document}
```

The package targets chapter-based standard classes such as `report`. The
template uses `report` because reviewer and question numbers are derived from
the `chapter` and `section` counters.

### Overleaf

Upload `responsefile.sty` to the top-level directory of the Overleaf project,
beside the main `.tex` file. No TeX installation step is required. Add
`\usepackage{responsefile}` to the document preamble.

### Public Interface

- `\editor{<title>}` creates an unnumbered editor heading.
- `\reviewer{}` starts the next numbered reviewer chapter.
- `equestion` creates a named, unnumbered editor question.
- `question` creates a numbered reviewer question.
- `\response` prints the response label.
- `amendment` takes the revised section number and title as its two arguments.

The `question` and `equestion` environments display comments in italics with a
red bar. The `amendment` environment uses a blue bar. Figures and tables are
numbered by reviewer, for example `R1-1`.

Existing documents that use `\input{tex/preamble}` remain supported through a
compatibility shim, although new documents should load the package directly.

Document-specific packages and settings remain in the document preamble. For
example, the included sample loads `lipsum` for placeholder text and defines
its own `\graphicspath`.

## Directory Structure

The main file, package, and `ref.bib` are in the root directory for Overleaf
compatibility. Response content is in `./tex`, and figures are in `./figures`.
Intermediate files go to `./build`; the final `main.pdf` is moved to the root
directory.

## Command-Line Compilation

```
chmod +x ./compile.sh  # Change permission if necessary
./compile.sh           # Compile the template
./compile.sh -c        # Clear intermediate files using latexmk
```
