RM = rm -rf
INKSCAPE = inkscape
DPI = 360

svg_figures != ls *.svg
target_files = ${svg_figures:.svg=.png} ${svg_figures:.svg=.eps} \
               ${svg_figures:.svg=.pdf}

.SUFFIXES: .svg .png
.svg.png:
	${INKSCAPE} -zD -d ${DPI} -e ${.TARGET} ${.IMPSRC}

.SUFFIXES: .svg .eps
.svg.eps:
	${INKSCAPE} -zD -E ${.TARGET} ${.IMPSRC}

.SUFFIXES: .svg .pdf
.svg.pdf:
	${INKSCAPE} -zD -A ${.TARGET} ${.IMPSRC}

.SUFFIXES: .csv .png
.csv.png:
	python3 bar_chart.py ${.IMPSRC} ${.TARGET}


.PHONY: all
all: ${target_files}

.PHONY: clean
clean:
	${RM} ${target_files}
