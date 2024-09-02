clean: 
	find . -type f -name "* [0-9]*" -delete
	rm -rf docs

publish: 
	quarto render 
	python scripts/strip-solutions-from-warmup.py