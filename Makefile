DVI2PDF = dvipdfmx
TEX = platex --kanji=euc


main.pdf: main.dvi
	$(DVI2PDF) $<


.PHONY: clean
clean:
	-$(RM) *.log
	-$(RM) *.aux
	-$(RM) *.dvi
	-$(RM) *.pdf
	-$(RM) *~
	-$(RM) #*
