FROM alpine:latest
WORKDIR /lookbusy

RUN apk update \
    && apk add make g++ \
    && wget http://www.devin.com/lookbusy/download/lookbusy-1.4.tar.gz \
    && tar -zxvf lookbusy-1.4.tar.gz \
    && cd lookbusy-1.4 \
    && chmod +x ./configure && ./configure && make \
    && apk del make g++

COPY start.sh ./start.sh

ENTRYPOINT [ "sh","start.sh" ]