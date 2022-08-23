FROM python:alpine

LABEL org.opencontainers.image.source="https://github.com/unsortedhashsets/docker-openstack-cli"

COPY requirements.txt /tmp/

RUN apk add --no-cache linux-headers \
    build-base \
    openssl-dev \
    && rm -rf /var/cache/apk/*

ENV PIP_ROOT_USER_ACTION=ignore

RUN python3 -m pip install --no-cache-dir --upgrade pip
RUN python3 -m pip install --no-cache-dir -r /tmp/requirements.txt

RUN rm /tmp/requirements.txt

CMD [ "/bin/sh" ]