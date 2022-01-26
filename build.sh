#!/bin/sh

article=$1

docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex ${article}.tex
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive biber ${article}
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex ${article}.tex
docker run -ti --rm -u `id -u`:`id -g` -v /home:/home -w `pwd` -e HOME=$HOME texlive/texlive xelatex ${article}.tex

