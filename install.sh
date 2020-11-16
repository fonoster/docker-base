#!/bin/sh

apk add --update nodejs=10.19.0-r0 npm=10.19.0-r0 ;\
  npm -g install . ; \
  npm rebuild ; \
  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
