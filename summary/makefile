rm = rm -rf
latex = lualatex
pdf_viewer = mupdf
summary_pdf = summary.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	${latex} ${.IMPSRC}
	cat ${.IMPSRC} | tr "、。" "，．" | ${latex} --jobname=${.TARGET:.pdf=}

.PHONY: all
all: ${summary_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc


.PHONY: summary
summary: ${summary_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}


summary.pdf: ttisummary.cls
