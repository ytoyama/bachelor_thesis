rm = rm -rf
latex = lualatex
pdf_viewer = mupdf -r 160
supplement_pdf = supplement.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	: ${src::=${.IMPSRC:.tex=_tmp_by_make.tex}}
	cat ${.IMPSRC} | tr "、。" "，．" > ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${rm} ${src}

.PHONY: all
all: ${supplement_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc *.nav *.snm *.out

.PHONY: supplement
supplement: ${supplement_pdf}
	${pdf_viewer} ${.ALLSRC}

${supplement_pdf}: beamerthemettipresentation.sty
