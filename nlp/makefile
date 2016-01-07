rm = rm -rf
pdf_viewer = mupdf
nlp_pdf = nlp.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	platex ${.IMPSRC}
	platex ${.IMPSRC}
	dvipdfmx ${.IMPSRC:R:=.dvi}

.PHONY: all
all: ${nlp_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc


.PHONY: nlp
nlp: ${nlp_pdf}
	${pdf_viewer} ${.ALLSRC}
