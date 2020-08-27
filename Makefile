eXModeloModuleABC.html: eXModeloModuleABC.md style.css
	pandoc -s $< -o $@ --mathjax --toc \
	    --css style.css

# eXModeloModuleABC.pdf: eXModeloModuleABC.md 
# 	pandoc --pdf-engine xelatex -s $< -o $@ --mathjax --toc

