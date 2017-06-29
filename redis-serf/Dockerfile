FROM draconrose/serf

ENV SERF_DISCOVER=redis

RUN apk update \
  && apk add 'redis<3.3' \
  && rm /var/cache/apk/*.tar.gz


CMD ["redis-server"]
