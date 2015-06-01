FROM ubuntu:trusty

MAINTAINER BINLEI XUE "x@git.cool"

RUN apt-get update \
 && apt-get install -y curl ca-certificates \
 && curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.25.4/install.sh | bash \
 && bash -c ". /root/.nvm/nvm.sh && nvm install iojs-v2.0.0" \
 && rm -rf /var/lib/apt/lists/*

ENV PATH /root/.nvm/versions/io.js/v2.0.0/bin:$PATH