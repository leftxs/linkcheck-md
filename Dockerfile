FROM alpine:3.10
LABEL maintainer="github.com/ocular-d"

RUN apk add --no-cache \
        nodejs \
        nodejs-npm \
      && npm install markdown-link-check \
      && adduser -D -s /bin/false -H ttd

USER ttd

VOLUME /srv
WORKDIR /srv/data

COPY config.json /srv/config.json

ENTRYPOINT ["markdown-link-check"]
CMD ["-c", "/srv/config.json"]
