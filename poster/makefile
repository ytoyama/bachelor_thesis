rm = rm -rf
latex = lualatex
pdf_viewer = mupdf -r 88
image_viewer = feh -.
poster_pdf = poster.pdf
pdftk = pdftk
convert = convert


.SUFFIXES: .tex .pdf
.tex.pdf:
	: ${src::=${.IMPSRC:.tex=_tmp_by_make.tex}}
	cat ${.IMPSRC} | tr "、。" "，．" > ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${latex} --jobname=${.TARGET:.pdf=} ${src}
	${rm} ${src}

.SUFFIXES: .pdf .png
.pdf.png:
	${convert} -density 512 ${.IMPSRC} -quality 100 ${.TARGET}

.PHONY: all
all: ${poster_pdf} images

.PHONY: clean
clean:
	${rm} *.pdf *.dvi *.aux *.log *.toc *.nav *.snm *.out *.png doc_data.txt

.PHONY: poster
poster: ${poster_pdf}
	${pdf_viewer} ${.ALLSRC}

.PHONY: view_images
view_images: images
	${image_viewer} *.png

.PHONY: images
images: ${poster_pdf}
	: ${filename_format::=${.ALLSRC:.pdf=}_%d.pdf}
	first_page_png=$$(echo "${filename_format:.pdf=.png}" | sed 's/%d/1/'); \
	if [ ! -r "$$first_page_png" ] \
	   || [ ${poster_pdf} -nt "$$first_page_png" ]; \
	then \
	  ${pdftk} ${.ALLSRC} burst output '${filename_format}'; \
	  for filename in $$(echo $$(echo "${filename_format}" | sed 's/%d/*/')); \
	  do \
	    ${MAKE} "$$(echo "$$filename" | sed "s/\.pdf/\.png/")"; \
	    ${rm} "$$filename"; \
	  done; \
	fi

${poster_pdf}: beamerthemettiposter.sty
