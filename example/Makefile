build:
	sudo docker build -t docker-nodejs-sample-app .

run:
	sudo docker run \
	    -it \
        -p 5000:5000 \
        -v /var/logs/docker-nodejs-sample-app:/logs \
        -v $(PWD):/app \
	    --rm \
        mc2labs/nodejs:dev


.PHONY: build run
