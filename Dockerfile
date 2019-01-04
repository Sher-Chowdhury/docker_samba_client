FROM alpine:3.8
# used the following as an example: https://github.com/rgcamus/dockerfile-alpine_smashing
# https://docs.docker.com/engine/reference/builder/
# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/

LABEL maintainer "Sher Chowdhury"

RUN echo "alias ll='ls -lrt'" > ~/.bashrc

RUN apk --update --no-cache add
 
RUN apk update && apk upgrade
RUN apk add tzdata \
  cifs-utils \
  rsync \
  curl \
  wget \
  bash \
  nodejs \
  gcc \
  pkgconfig \
  curl-dev \
  zlib \
  zlib-dev \
  tree
