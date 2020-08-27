eXModeloModuleABC.html: eXModeloModuleABC.md
	pandoc -s $< -o $@ --mathjax --toc

