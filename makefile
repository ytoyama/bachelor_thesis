main_pdf = thesis.pdf
dpi = 88


.SUFFIXES: .tex .pdf
.tex.pdf:
	lualatex ${.IMPSRC} # for forward references
	lualatex ${.IMPSRC}

.PHONY: all
all: ${main_pdf}

.PHONY: view
view: ${main_pdf}
	mupdf -r ${dpi} ${.ALLSRC}

.PHONY: clean
clean:
	rm -rf ${main_pdf} *.log *.aux
