build:
	cd src; sudo docker build -t mc2labs/nodejs .

build-dev:
	cd src/dev; sudo docker build -t mc2labs/nodejs:dev .

.PHONY: build build-dev
