#!/bin/sh
while inotifywait *.tex; do
#    pdflatex -interaction=nonstopmode bare_conf.tex
#     make
    pdflatex -interaction=nonstopmode bare_conf.tex
    bibtex bare_conf
    pdflatex -interaction=nonstopmode bare_conf.tex
    pdflatex -interaction=nonstopmode bare_conf.tex
    rm -rf *.log *.blg *.bbl *.aux
done
