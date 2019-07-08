Docker-Hey
============

[![Circle CI](https://circleci.com/gh/William-Yeh/docker-hey.svg?style=shield)](https://circleci.com/gh/William-Yeh/docker-hey) [![Build Status](https://travis-ci.org/William-Yeh/docker-hey.svg?branch=master)](https://travis-ci.org/William-Yeh/docker-hey)


## Summary

Repository name in Docker Hub: **[williamyeh/hey](https://hub.docker.com/r/williamyeh/hey/)**

This repository contains Dockerized [hey](https://github.com/rakyll/hey), published to the public [Docker Hub](https://hub.docker.com/) via **automated build** mechanism.



## Configuration

This docker image contains the following software stack:

- Alpine 3

- Hey

Total image size is less than 20 MB.


### Dependencies

- [`alpine`](https://hub.docker.com/_/alpine).


### History

- 1.1 - Change from [boom](https://github.com/rakyll/boom) to [hey](https://github.com/rakyll/hey) with respect to original repo.
- 1.0 - Initial release.


## Installation

```
$ docker pull williamyeh/hey
```


## Usage


#### Show usage

```
$ docker run --rm williamyeh/hey
```


#### Typical example

```
$ docker run --rm  williamyeh/hey  \
      -n 1000 -c 100 https://google.com
```
