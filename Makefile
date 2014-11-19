build-runtime:
	cd runtime;
	sudo docker build -t mc2labs/nodejs .

build-dev:
	cd dev;
	sudo docker build -t mc2labs/nodejs:dev .

.PHONY: build-runtime build-dev
