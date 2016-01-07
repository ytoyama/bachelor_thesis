rm = rm -rf
latex = lualatex
pdf_viewer = mupdf
nlp_pdf = nlp.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	${latex} ${.IMPSRC}
	${latex} ${.IMPSRC}

.PHONY: all
all: ${nlp_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc


.PHONY: nlp
nlp: ${nlp_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}
