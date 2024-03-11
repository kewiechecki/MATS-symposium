presentation.pdf: build/presentation.bbl
	xelatex -output-directory=build presentation.tex
	mv build/presentation.pdf wiechecki_MATS_5.0.pdf

build/presentation.bbl: build/presentation.bcf
	biber build/presentation

build/presentation.bcf: build presentation.tex
	xelatex -output-directory=build presentation.tex

build:
	mkdir build

clean:
	rm -rf build
