FROM alpine:3.12
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"
RUN apk add --no-cache tini
# Re-mapping the signal from 143 to 0
ENTRYPOINT ["tini", "-v", "-e", "143", "--"]
COPY . /scripts
WORKDIR /scripts
RUN adduser fonos --disabled-password \
  --gecos "" \
  --home /home/fonos
RUN chmod +x install.sh
CMD ["run"]
