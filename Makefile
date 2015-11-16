build:
	cd src; docker build -t mc2labs/nodejs .

build-dev:
	cd src/dev; docker build -t mc2labs/nodejs:dev .

.PHONY: build build-dev
