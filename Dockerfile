FROM alpine:3.12
LABEL maintainer="Pedro Sanders <psanders@fonoster.com>"
ENV USER=fonos
ENV GID=1000
ENV UID=1000
ENV HOME=/home/fonos

COPY . /scripts
WORKDIR /scripts

RUN addgroup -g ${GID} ${USER} && adduser \
    --disabled-password \
    --gecos "" \
    --ingroup "$USER" \
    --home ${HOME} \
    --uid "$UID" \
    "$USER"

RUN chmod +x install.sh

# Re-mapping the signal from 143 to 0
ENTRYPOINT ["tini", "-v", "-e", "143", "--"]
CMD ["run"]
