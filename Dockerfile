ARG DOCKER_REGISTRY=docker.io
ARG FROM_IMG_REPO=qnib
ARG FROM_IMG_NAME=uplain-init
ARG FROM_IMG_TAG=bionic-20181112_2018-12-08.1
ARG FROM_IMG_HASH=""

FROM ${DOCKER_REGISTRY}/${FROM_IMG_REPO}/${FROM_IMG_NAME}:${FROM_IMG_TAG}${DOCKER_IMG_HASH}

ENV DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NONINTERACTIVE_SEEN=true
RUN apt-get update \
 && apt-get install --no-install-recommends -y libc-ares-dev \
        libceres-dev \
        libpython3-dev \
        python3-dev \
        python3-pip \
        python3-pycares \
        python3-setuptools \
        python3-wheel \
 && rm -rf /var/lib/apt/lists/*
