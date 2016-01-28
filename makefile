thesis_pdf = thesis.pdf
all_pdfs = ${thesis_pdf}

dpi = 88
pdf_viewer = mupdf -r ${dpi}


.SUFFIXES: .tex .pdf
.tex.pdf:
	lualatex ${.IMPSRC} # for forward references
	lualatex ${.IMPSRC}

.PHONY: all
all: ${all_pdfs}

.PHONY: thesis
thesis: ${thesis_pdf}
	${pdf_viewer} ${.ALLSRC}

.PHONY: clean
clean:
	rm -rf ${all_pdfs} *.log *.aux


${thesis_pdf}: ttithesis.cls
