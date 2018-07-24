#
# Dockerfile for stunnel
#

FROM alpine:edge

MAINTAINER Thomas Strohmeier

RUN apk add --no-cache stunnel

COPY docker-entrypoint.sh /entrypoint.sh

VOLUME /etc/stunnel

ENTRYPOINT ["/entrypoint.sh"]