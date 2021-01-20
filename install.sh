#!/bin/sh

set -e

apk add --no-cache --update tini nodejs=12.20.1-r0 npm=12.20.1-r0 ;\
  npm -g install . ; \
  npm rebuild ; \
  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
