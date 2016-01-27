rm = rm -rf
latex = lualatex
pdf_viewer = mupdf
summary_pdf = summary.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	${latex} ${.IMPSRC}
	${latex} ${.IMPSRC}

.PHONY: all
all: ${summary_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc


.PHONY: summary
summary: ${summary_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}
