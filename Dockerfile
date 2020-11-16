FROM alpine:3.10
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"

COPY . /scripts
WORKDIR /scripts

RUN adduser fonos --disabled-password \
  --gecos "" \
  --home /home/fonos


