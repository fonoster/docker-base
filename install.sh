#!/bin/sh

apk add --update nodejs=12.18.4-r0 npm=12.18.4-r0 ;\
  npm -g install . ; \
  npm rebuild ; \
  rm -rf /var/cache/apk/* /tmp/* /var/tmp/*
