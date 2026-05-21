# Makefile for ppchtextut
#

FILES = ctx-entorno.tex \
	ctx-portada.tex \
	ctx-indice.tex \
	prefacio/ctx-prefacio.tex \
	texto/ctx-inicio.tex \
	texto/ctx-estructuras.tex \
	texto/ctx-enlaces.tex


ppchtextut.pdf: ctx-ppchtextut.tex $(FILES)
	context $<

all: ppchtextut.pdf

.PHONY: clean

clean:
	rm -rf *.pdf *.log *.tuc *.aux *~ auto texto/*.~ texto/auto

