# This makefile contains some convenience commands for deploying and publishing.
# For example, to build and run the docker container locally, just run:
# $ make
# or to publish the :latest version to the specified registry as :1.0.0, run:
# $ make publish version=1.0.0

name = app-service
registry = x3zkw
version ?= latest

all: run

image:
	$(call blue, "Building docker image...")
	docker build -t ${registry}/${name}:${version} .

run: image
	$(call blue, "Running Docker image locally...")
	docker run -i -t --rm -p 5000:5000 ${name}:${version}

publish:
	$(call blue, "Publishing Docker image to registry...")
	docker tag ${registry}/${name}:latest ${registry}/${name}:${version}
	docker push ${registry}/${name}:${version}

define blue
	@tput setaf 6
	@echo $1
	@tput sgr0
endef
