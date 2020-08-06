FROM ubuntu:20.04

RUN apt-get update \
    && apt-get install s3cmd -y \
    && apt-get install python3-certifi -y 

