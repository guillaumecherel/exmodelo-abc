eXModeloModuleABC.html: eXModeloModuleABC.md style.css
	pandoc -s $< -o $@ --mathjax --toc \
	    --css style.css


