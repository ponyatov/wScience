TEX = wScience.tex ../texheader/ebook.tex
TEX += preface.tex
TEX += 1_1_outline.tex
wScience.pdf: $(TEX)
	pdflatex $< && pdflatex $<
