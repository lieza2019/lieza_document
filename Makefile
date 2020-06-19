DVI2PDF = dvipdfmx
TEX = platex --kanji=euc

lieza_spec.pdf: lieza_spec.dvi
	$(DVI2PDF) $<

lieza_spec.dvi: lieza_spec.tex
	$(TEX) $<
	$(TEX) $<


.PHONY: clean
clean:
	-$(RM) *.log
	-$(RM) *.aux
	-$(RM) *.dvi
	-$(RM) *.pdf
	-$(RM) *~
	-$(RM) #*
