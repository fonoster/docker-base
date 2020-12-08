FROM alpine:3.12
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"
COPY . /scripts
WORKDIR /scripts
RUN adduser fonos --disabled-password \
  --gecos "" \
  --home /home/fonos
RUN chmod +x install.sh
CMD ["/bin/sh", "-c", "run"]
