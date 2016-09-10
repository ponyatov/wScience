TEX = wScience.tex ../texheader/ebook.tex
TEX += preface.tex
wScience.pdf: $(TEX)
	pdflatex $< && pdflatex $<
