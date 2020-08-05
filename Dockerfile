FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install s3cmd -y \
    && apt-get install python3-certifi -y \
    && mkdir -p /usr/upload

COPY ./upload.sh /usr/upload.sh

CMD /bin/sh /usr/upload.sh
