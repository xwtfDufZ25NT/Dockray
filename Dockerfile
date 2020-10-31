FROM alpine:edge

ARG ARGTEST=$TEST

ENV ENVTEST=$TEST

RUN printenv \
    echo "RUN \n TEST:"$TEST \
    echo "ARTTEST:"$ARGTEST \
    echo "ENVTEST:"$ENVTEST \
    cp test.sh / \
    chmod +x /test.sh
    
CMD /test.sh