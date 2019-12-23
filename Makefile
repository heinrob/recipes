
PDFS := $(patsubst %.md,pdfs/%.pdf,$(wildcard *.md))

all: $(PDFS)

pdfs/%.pdf : %.md
	pandoc -V geometry:margin=1in $< -o $@

clean:
	$(RM) pdfs/*.pdf
