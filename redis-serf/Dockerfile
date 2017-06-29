FROM draconrose/serf

ENV SERF_DISCOVER=redis

RUN apk update \
  && apk add 'redis<3.3' \
  && rm /var/cache/apk/*.tar.gz

COPY include.sh /usr/local/bin/

CMD ["redis-server"]
