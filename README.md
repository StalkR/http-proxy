# Simple Go HTTP proxy #

[![Build Status](https://api.travis-ci.org/StalkR/http-proxy.png?branch=master)](https://travis-ci.org/StalkR/http-proxy) [![Godoc](https://godoc.org/github.com/StalkR/http-proxy?status.png)](https://godoc.org/github.com/StalkR/http-proxy)

A simple HTTP proxy in Go, no caching.
Supports HTTP and CONNECT method for HTTPS & HTTP/2.

It listens on TCP IPv4/IPv6 at the specified port.

Example:

    $ go run http_proxy.go -listen :8080 [-add-forwarded-for]

Flag `-add-forwarded-for` adds client IP to the `X-Forwarded-For` header.

# Setup #

Install go package, create Debian package, install:

    $ go get -u github.com/StalkR/http-proxy
    $ cd $GOPATH/src/github.com/StalkR/http-proxy
    $ fakeroot debian/rules clean binary
    $ sudo dpkg -i ../http-proxy_1-1_amd64.deb

Configure in `/etc/default/http-proxy` and start with `/etc/init.d/http-proxy start`.

# License #

[Apache License, version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

# Bugs, feature requests, questions #

Create a [new issue](https://github.com/StalkR/http-proxy/issues/new).
