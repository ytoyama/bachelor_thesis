rm = rm -rf
latex = lualatex
dpi = 88
pdf_viewer = mupdf -r ${dpi}

thesis_pdf = thesis.pdf


.SUFFIXES: .tex .pdf
.tex.pdf:
	: ${jobname::=${.TARGET:.pdf=}}
	${latex} --jobname=${jobname} ${.IMPSRC} # for forward references
	${latex} --jobname=${jobname} ${.IMPSRC}

.PHONY: all
all: ${thesis_pdf}

.PHONY: thesis
thesis: ${thesis_pdf}
	${pdf_viewer} ${.ALLSRC}

.PHONY: clean
clean:
	${rm} *.pdf *.toc *.log *.aux *.lot *.lof


${thesis_pdf}: ttithesis.cls introduction.tex related_research.tex \
               proposed_method.tex experiments.tex conclusion.tex \
               discussion.tex acknowledgements.tex bibliographies.tex
