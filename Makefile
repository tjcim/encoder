###
# Encoder Makefile
###

.PHONY: build run down dev bash
.DEFAULT_GOAL := run

# Variables
NAME = encoder
PORT = 5000

run: build
	@echo "Running ${NAME} on random port"
	docker container run --rm -d -p ${PORT} --name="${NAME}" ${NAME}
	docker container port ${NAME}

dev: build
	# This runs a livereload server.
	@echo "Running ${NAME} for DEV"
	docker container run -e PYTHONDONTWRITEBYTECODE=1 -p ${PORT}:${PORT} --name="${NAME}" --rm -v ${PWD}:/usr/src/app ${NAME} python dev.py ${PORT}

bash: build
	@echo "Running ${NAME} bash"
	docker container run -it -e PYTHONDONTWRITEBYTECODE=1 -p ${PORT}:${PORT} -v ${PWD}:/usr/src/app --rm ${NAME} bash

down:
	@echo "Stopping ${NAME}"
	docker container stop ${NAME}

build:
	@echo "Building ${NAME}"
	docker buildx build -t ${NAME} .
