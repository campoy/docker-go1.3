docker-go1.3
=============

Docker image providing the Go compiler and tools for go1.3.
It also includes git and mercurial to make `go get` work out of the box.

To build the image:

	$ docker build -t francesc/golang:1.3 github.com/campoy/docker-go1.3
	...

Or just get it from the docker registry:

	$ docker pull francesc/golang:1.3

And run it:

	$ docker run francesc/golang:1.3 go version
	go version go1.3 linux/amd64

Or get and run whatever you want in it:

	$ docker run -i -t francesc/golang:1.3 /bin/bash
	$ go get github.com/campoy/docker-go1.3/hello
	$ hello
	hello, docker!
