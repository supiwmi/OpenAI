install: 
	pip install --upgrde pip &&\
		pip install -r requirement.txt
	
test:
	python -m pytest -vv test_quickstart.pytest

format:
	black *.py

lint:
	pylint --eisable=R,C test_quickstart.py

all: install lint test