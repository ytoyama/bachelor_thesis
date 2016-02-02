RM = rm -rf
INKSCAPE = inkscape
DPI = 360

svg_figures = dvsvwv.svg model.svg algorithm.svg paragraph_vector.svg \
              review.svg
target_files = ${svg_figures:.svg=.png} ${svg_figures:.svg=.eps}

.SUFFIXES: .svg .png
.svg.png:
	${INKSCAPE} -zD -d ${DPI} -e ${.TARGET} ${.IMPSRC}

.SUFFIXES: .svg .eps
.svg.eps:
	${INKSCAPE} -zD -E ${.TARGET} ${.IMPSRC}

.SUFFIXES: .csv .png
.csv.png:
	python3 bar_chart.py ${.IMPSRC} ${.TARGET}


.PHONY: all
all: ${target_files}

.PHONY: clean
clean:
	${RM} ${target_files}
