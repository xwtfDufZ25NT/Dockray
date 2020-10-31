FROM alpine:edge

ARG TEST

RUN echo "RUN \n TEST:"$TEST
    
CMD echo $TEST