FROM alpine:3.12
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"

COPY . /scripts
WORKDIR /scripts
RUN adduser fonos --disabled-password \
  --gecos "" \
  --home /home/fonos \
  --uid 1000 \
  --gid 1000
RUN chmod +x install.sh

# Re-mapping the signal from 143 to 0
ENTRYPOINT ["tini", "-v", "-e", "143", "--"]
CMD ["run"]
