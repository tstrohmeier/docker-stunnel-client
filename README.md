# docker-stunnel-client
Dockerfile for the tstrohmeier/stunnel-client image

I use this image if I want to work in a local env.

@Dockerhub: https://hub.docker.com/r/tstrohmeier/stunnel-client/

## Pull image

``` bash

docker pull tstrohmeier/stunnel-client:latest

```

## What is installed in this image?
* stunnel in client mode as client



# How to use it

Add the following lines to your docker-compose file to add the container to your setup:

``` yaml

stunnel-proxy:
  image: tstrohmeier/stunnel-client:latest
  restart: always
  environment:
    - ACCEPT=8888
    - CONNECT=your.server.com:443
  ports:
    - "8888:8888"  

```