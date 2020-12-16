FROM alpine:3.12
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"
RUN apk add --no-cache tini
ENTRYPOINT ["/sbin/tini", "--"]
COPY . /scripts
WORKDIR /scripts
RUN adduser fonos --disabled-password \
  --gecos "" \
  --home /home/fonos
RUN chmod +x install.sh
CMD ["/usr/bin/run"]
