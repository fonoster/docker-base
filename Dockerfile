FROM alpine:3.12
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"

# Add Tini
ENV TINI_VERSION v0.19.0
ADD https://github.com/krallin/tini/releases/download/${TINI_VERSION}/tini /tini
RUN chmod +x /tini
ENTRYPOINT ["/tini", "--"]

COPY . /scripts
WORKDIR /scripts
RUN adduser fonos --disabled-password \
  --gecos "" \
  --home /home/fonos
RUN chmod +x install.sh
CMD ["run"]
