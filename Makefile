install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
		
format:
	black *.py
	
lint:
	pylint --disable=R,C frbnyWebscrapper.py
	
test:
	python -m pytest -vv --cov=frbnyWebscrapper test_frbnyWebscrapper.py
	
all: install lint test