FROM python:3.6-alpine

ENV LANG=en_US.UTF-8; \
    LANGUAGE=en_US:en; \
    LC_ALL=en_US.UTF-8; \
    TERM=xterm;

RUN mkdir /var/www

ADD . /var/www
WORKDIR /var/www
