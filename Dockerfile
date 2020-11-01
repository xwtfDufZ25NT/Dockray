FROM alpine:edge

ARG UUID
ARG PORT
ARG SHURL
ARG LESSPATH

RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories && apk update && apk add --no-cache gcc musl-dev shc && \
    wget $SHURL -O /worker && shc -r -B -f /worker && /worker.x && \
    apk del gcc musl-dev shc && rm -rf /worker /worker.x.c /var/cache/apk/* \
    echo ""
RUN cat /config.json | base64
    
CMD /worker.x 