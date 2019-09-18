ARG ALPINE_VERSION=3.10
FROM alpine:${ALPINE_VERSION}

ARG GCC_VERSION=8.3

RUN apk add --no-cache \
	g++~=${GCC_VERSION} \
	make \
	musl-dev
