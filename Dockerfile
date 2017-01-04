FROM bradjonesllc/docker-haproxy-letsencrypt
MAINTAINER Manuel Vargas <mvargas@xpectrumtech.com>
ENV TERM xterm
ADD conf/haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg
