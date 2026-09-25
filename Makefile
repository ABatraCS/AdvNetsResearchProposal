MAIN := hotnets26-template
OUTDIR := generated
PDFNAME := project-proposal

.PHONY: all pdf clean

all: pdf

pdf: $(OUTDIR)
	latexmk -pdf -interaction=nonstopmode -halt-on-error -outdir=$(OUTDIR) -jobname=$(PDFNAME) $(MAIN).tex

$(OUTDIR):
	mkdir -p $(OUTDIR)

clean:
	latexmk -C -outdir=$(OUTDIR) $(MAIN).tex
	rm -rf $(OUTDIR)
