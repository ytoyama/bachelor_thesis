thesis_pdf = thesis.pdf
summary_pdf = summary.pdf
all_pdfs = ${thesis_pdf} ${summary_pdf}

dpi = 88
pdf_viewer = mupdf -r ${dpi}


.SUFFIXES: .tex .pdf
.tex.pdf:
	lualatex ${.IMPSRC} # for forward references
	lualatex ${.IMPSRC}

.PHONY: all
all: ${all_pdfs}

.PHONY: view_thesis
view_thesis: ${thesis_pdf}
	${pdf_viewer} ${.ALLSRC}

.PHONY: view_summary
view_summary: ${summary_pdf}
	${pdf_viewer} ${.ALLSRC}

.PHONY: clean
clean:
	rm -rf ${all_pdfs} *.log *.aux


${thesis_pdf}: ttithesis.cls
${summary_pdf}: ttisummary.cls
