#
# Dockerfile for stunnel
#

FROM alpine:3.8

MAINTAINER Thomas Strohmeier

COPY docker-entrypoint.sh /entrypoint.sh

RUN apk add --no-cache stunnel \
    && chmod +x /entrypoint.sh

VOLUME /etc/stunnel

ENTRYPOINT ["/entrypoint.sh"]