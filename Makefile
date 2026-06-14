.PHONY: all web pdf serve serve-html

all: web pdf

web:
	shiroa build

pdf:
	typst compile ebook.typ
	mv ebook.pdf dist/ebook.pdf
	gs -sDEVICE=pdfwrite -dPDFSETTINGS=/printer -dNOPAUSE -dBATCH \
		-sOutputFile=dist/ebook_compressed.pdf dist/ebook.pdf

serve:
	shiroa serve

serve-html:
	shiroa serve --mode static-html
