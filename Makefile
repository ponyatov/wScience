MODULE ?= $(notdir $(CURDIR))

TEX = $(MODULE).tex ../texheader/ebook.tex

TEX += preface.tex
TEX += 1_1_outline.tex

LATEX = pdflatex -halt-on-error

.PHONY: pdf
pdf: $(MODULE).pdf
$(MODULE).pdf: $(TEX) $(FIG) $(SRC)
	$(LATEX) $< && $(LATEX) $<
