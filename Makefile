install: 
	pip install --upgrde pip &&\
		pip install -r requirement.txt
	
test:
	python -m pytest -vv test_quickstart.pytest

format:
	black *.py

lint:
	pylint --disable=R,C quickstart.py

all: install lint test