FROM ubuntu:12.10

MAINTAINER Francesc Campoy <campoy@golang.org>

ENV TERM linux
RUN apt-get install -y apt-utils dialog netbase
RUN apt-get install -y gcc libc6-dev mercurial git
RUN apt-get update

RUN hg clone -u go1.3 https://code.google.com/p/go /go
RUN cd /go/src && ./all.bash

RUN mkdir gopath

ENV GOPATH /gopath
ENV PATH $PATH:/go/bin:$GOPATH/bin