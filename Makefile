DVI2PDF = dvipdfmx
TEX = platex --kanji=euc

main.pdf: main.dvi
	$(DVI2PDF) $<

main.dvi: main.tex canon.tex extended.tex implement.tex
	$(TEX) main.tex


.PHONY: clean
clean:
	-$(RM) *.log
	-$(RM) *.aux
	-$(RM) *.dvi
	-$(RM) *.pdf
	-$(RM) *~
	-$(RM) #*
