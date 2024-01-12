install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	echo "Not implemented yet"
	#python -m pytest -vv test_*.py

format:	
	black *.py awstools/*.py codewhisper/*.py copilot/*.py

lint:
	pylint --disable=R,C --ignore-patterns=test_.*?py *.py awstools/*.py codewhisper/*.py copilot/*.py

refactor: format lint

all: install lint test