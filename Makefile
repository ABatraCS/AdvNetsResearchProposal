MAIN := hotnets26-template
OUTDIR := generated

.PHONY: all pdf clean

all: pdf

pdf: $(OUTDIR)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR) $(MAIN).tex

$(OUTDIR):
	mkdir -p $(OUTDIR)

clean:
	latexmk -C -outdir=$(OUTDIR) $(MAIN).tex
	rm -rf $(OUTDIR)
