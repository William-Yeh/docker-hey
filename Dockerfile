# Docker image for hey: HTTP(S) load generator, ApacheBench (ab) replacement, written in Go.
#
# URL: https://github.com/William-Yeh/docker-hey
#
# Reference:  https://github.com/rakyll/hey
#
# Version     1.1
#

#======================================#
# builder env
#

FROM golang:1.12.5 AS builder
LABEL author="william.pjyeh@gmail.com"

RUN git clone https://github.com/rakyll/hey.git

RUN GOOS=linux   GOARCH=amd64  CGO_ENABLED=0 \
    go get -u github.com/rakyll/hey


#======================================#
# deployment env
#

FROM alpine:3.10.0
LABEL author="william.pjyeh@gmail.com"

# copy executable
COPY --from=builder /go/bin/hey  /

# Define default command.
ENTRYPOINT ["/hey"]
