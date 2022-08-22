FROM python:alpine

COPY requirements.txt /tmp/

RUN apk add --no-cache linux-headers \
    build-base \
    openssl-dev \
    && rm -rf /var/cache/apk/*

RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip install --no-cache-dir -r /tmp/requirements.txt

RUN rm /tmp/requirements.txt

ENTRYPOINT [ "/bin/sh" ]