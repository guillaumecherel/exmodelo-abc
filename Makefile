eXModeloModuleABC.html: eXModeloModuleABC.md
	pandoc -s eXModeloModuleABC.md -o eXModeloModuleABC.html --mathjax --toc

eXModeloModuleABC.gfm.md: eXModeloModuleABC.md
	pandoc -s --to gfm eXModeloModuleABC.md -o $@ --mathjax --toc

eXModeloModuleABC.tar.gz: eXModeloModuleABC.html 
