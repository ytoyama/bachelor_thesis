rm = rm -rf
latex = lualatex
pdf_viewer = mupdf -r 160
presentation_pdf = presentation.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	: ${src::=${.IMPSRC:.tex=_tmp_by_make.tex}}
	cat ${.IMPSRC} | tr "、。" "，．" > ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${rm} ${src}

.PHONY: all
all: ${presentation_pdf}

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc *.nav *.snm *.out


.PHONY: presentation
presentation: ${presentation_pdf}
	${pdf_viewer} ${.ALLSRC}


${presentation_pdf}: beamerthemettipresentation.sty
