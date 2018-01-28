FROM ubuntu:xenial

RUN apt-get -q -y update && apt-get install -y git rsync wget build-essential

ENV HUGO_VERSION 0.32.4
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

ADD https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_${HUGO_VERSION}_Linux-64bit.deb /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb && rm /tmp/hugo.deb
