.PHONY: all web pdf serve serve-html

all: web pdf

web:
	shiroa build

pdf:
	typst compile ebook.typ
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress -dNOPAUSE -dQUIET -dBATCH -sOutputFile=dist/ebook.pdf ebook.pdf
	rm ebook.pdf

serve:
	shiroa serve

serve-html:
	shiroa serve --mode static-html
