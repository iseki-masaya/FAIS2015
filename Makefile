all:
	rm -rf		build/*
	cp src/*	build
	cp style/*	build
	cp bib/*	build
	cp image/*	build
	cp macro/*	build
	export PATH=$PATH:/usr/texbin; cd build; /usr/texbin/platex main.tex; /usr/texbin/pbibtex main; /usr/texbin/platex main.tex; /usr/texbin/dvipdfmx main.dvi;
	export PATH=$PATH:/usr/texbin; cd build; /usr/texbin/platex main.tex; /usr/texbin/pbibtex main; /usr/texbin/platex main.tex; /usr/texbin/dvipdfmx main.dvi;
	open -a Preview.app build/main.pdf

clean:
	cd build; /bin/rm -f *.log *.dvi *.blg *.aux *.out *.bbl *.lot *.toc *.lof *.pdf