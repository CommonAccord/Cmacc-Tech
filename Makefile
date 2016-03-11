DOCKER_IMAGE=commonaccord
DOCKER_HTTP_PORT=8080

.PHONY: run image

run: image
	docker run -it -p $(DOCKER_HTTP_PORT):80 $(DOCKER_IMAGE)

image:
	docker build -t $(DOCKER_IMAGE) .
