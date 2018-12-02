## Files
  - src/* - Flask app source code, implementing a RESTful Web API with Python.
  - .travis.yml - Travis CI configuration.
  - Makefile - commands for deploying and publishing docker container.
  - Dockerfile - Docker image definition, will be used by the Jenkinsfile for the Docker image build.
  - Jenkinsfile - Jenkins pipeline, build a new Docker image, using the Dockerfile in the repository.
  - docker-compose.yml - spin up Docker container.

## Installation
Clone this repo
```
git clone https://github.com/x3zkw/app-service.git
cd app-service
```

## Building images
Makefile - contains some convenience commands for deploying and publishing.
  - To build and run the docker container locally, just run:
    $ make
  - To publish the :latest version to the specified registry as :1.0.0, run:
    $ make publish version=1.0.0


## Initialize VMs
Run `vagrant up`
  - This will set up VMs - provisioned with docker
  - This node also has Flask app image [x3zkw/app-service](https://hub.docker.com/r/x3zkw/app-service/) installed on it.
    You can run as `docker run -p 5000:5000 --name app-service x3zkw/app-service`

To ssh into the node run `vagrant ssh`
