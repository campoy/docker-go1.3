golang-docker
=============

Docker images providing different versions of Go

To build the image:

  $ docker build -t go1.3 thub.com/campoy/docker-go1.3
  ...

  $ docker run go1.3 go version
  go version go1.3 linux/amd64

Or just get it from the docker registry:

  docker pull francesc/go:1.3
