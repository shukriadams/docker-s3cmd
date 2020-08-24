FROM ubuntu:18.04

RUN apt update \
    && apt-get install wget -y \
    && apt install python -y \
    && apt-get install python-setuptools -y \
    && wget https://github.com/s3tools/s3cmd/releases/download/v2.1.0/s3cmd-2.1.0.tar.gz -O /tmp/s3cmd.tar.gz \
    && tar -C /bin -zxvf /tmp/s3cmd.tar.gz \
    && mv /bin/s3cmd-2.1.0/ /bin/s3cmd \
    && cd /bin/s3cmd \
    && python setup.py install \
    && rm /tmp/s3cmd.tar.gz \
    && apt-get remove wget -y
