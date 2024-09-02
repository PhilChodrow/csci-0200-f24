VENV_ACTIVATE = . env/bin/activate


clean: 
	find . -type f -name "* [0-9]*" -delete
	rm -rf docs

publish: 
	$(VENV_ACTIVATE)
	quarto render 
	python scripts/strip-solutions-from-warmup.py
	python scripts/strip-solutions-from-labs.py