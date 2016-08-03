.PHONY: test build

default: build test
	
test:
	docker run -t fizzbuzz

build:
	docker build -t fizzbuzz .

debug:
	docker run --entrypoint /bin/ash -it fizzbuzz
