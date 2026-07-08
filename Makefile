.PHONY: all compile optimize serve clean

all: compile optimize

compile:
	rheo compile --html --pdf .

optimize:
	gs -sDEVICE=pdfwrite -dPDFSETTINGS=/printer -dNOPAUSE -dBATCH \
		-sOutputFile=build/pdf/history-blog_compressed.pdf build/pdf/history-blog.pdf

serve:
	rheo watch --html --open .

clean:
	rm -R build/
