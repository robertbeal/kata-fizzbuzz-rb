.PHONY: test build
	
test:
	docker run -t fizzbuzz

build:
	docker build -t fizzbuzz .
