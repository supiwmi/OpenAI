install: 
	pip install --upgrade pip &&\
		pip install openai &&\
			pip install -r requirement.txt
	
test:
	python -m pytest -vv quickstart.py

format:
	black *.py

lint:
	pylint --disable=R,C *.py

all: install lint test