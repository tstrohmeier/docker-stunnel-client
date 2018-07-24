#!/bin/sh


cd /etc/stunnel

cat > stunnel.conf <<_EOF_

foreground = yes
client  = yes
[stunnelHttpsToHttpProxy]
accept = ${ACCEPT}
connect = ${CONNECT}

_EOF_

exec stunnel "$@"