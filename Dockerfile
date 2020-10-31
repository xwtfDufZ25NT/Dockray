FROM alpine:edge

ARG TEST

RUN printenv \
    echo "RUN \n TEST:"$TEST \
    cp test.sh / \
    chmod +x /test.sh
    
CMD /test.sh