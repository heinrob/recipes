
PDFS := $(patsubst %.md,pdfs/%.pdf,$(wildcard *.md))

all: $(PDFS)

pdfs/%.pdf : %.md
	pandoc $< -o $@

clean:
	$(RM) pdfs/*.pdf