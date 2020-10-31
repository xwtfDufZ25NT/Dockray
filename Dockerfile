FROM alpine:edge

ARG ARGTEST=TEST

ENV ENVTEST=TEST

RUN printenv \
    echo "RUN \n TEST:"$TEST \
    echo "ARTTEST:"$ARGTEST \
    echo "ENVTEST:"$ENVTEST
    
CMD printenv \
    echo "CMD \n TEST:"$TEST \
    echo "ARTTEST:"$ARGTEST \
    echo "ENVTEST:"$ENVTEST