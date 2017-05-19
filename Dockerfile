FROM python:3.6-alpine

ENV LANG=en_US.UTF-8; \
    LANGUAGE=en_US:en; \
    LC_ALL=en_US.UTF-8; \
    TERM=xterm;

RUN apk add --no-cache pcre-dev && \
    apk add --no-cache libffi libffi-dev && \
    apk add --no-cache --virtual .build-deps git && \
    apk add --no-cache --virtual .build-deps linux-headers && \
    apk add --no-cache --virtual .build-deps build-base && \
    apk add --no-cache --virtual .build-deps musl-dev && \
    pip3 install --no-cache-dir uwsgi==2.0.14 && \
    pip3 install --no-cache-dir gevent==1.2.1 && \
    mkdir /var/www && \
    rm -r /tmp/ && rm -rf /var/cache/apk/* && apk del .build-deps

ADD . /var/www
WORKDIR /var/www
