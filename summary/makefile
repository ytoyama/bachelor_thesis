rm = rm -rf
latex = lualatex
pdf_viewer = mupdf
summary_pdf = summary.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	: ${src::=${.IMPSRC:.tex=_tmp_by_make.tex}}
	cat ${.IMPSRC} | tr "、。" "，．" > ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${rm} ${src}

.PHONY: all
all: ${summary_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc


.PHONY: summary
summary: ${summary_pdf}
	${pdf_viewer} -r 88 ${.ALLSRC}


summary.pdf: ttisummary.cls
