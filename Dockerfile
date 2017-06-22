FROM alpine:latest
MAINTAINER Aaron Hurt <ahurt@ena.com>

ADD https://github.com/royrusso/elasticsearch-HQ/archive/master.tar.gz /tmp/

RUN set -ex && \
apk add --no-cache --no-progress ca-certificates nginx && \
sed -i.bak -e 's,/var/log/nginx/error.log,/dev/stderr,g;s,/var/log/nginx/access.log,/dev/stdout,g' /etc/nginx/nginx.conf && \
mkdir -p /run/nginx && \
tar -C /var/www/localhost/htdocs -zvxf /tmp/master.tar.gz && \
rm /tmp/master.tar.gz

COPY default.conf /etc/nginx/conf.d/

EXPOSE 80

STOPSIGNAL SIGTERM

CMD ["/usr/sbin/nginx", "-c", "/etc/nginx/nginx.conf", "-g", "daemon off;"]
