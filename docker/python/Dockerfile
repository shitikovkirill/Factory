FROM python:3.7

ARG requirements=requirements.txt

WORKDIR /app

ADD $requirements /app/requirements.txt
RUN set -ex \
    && pip install --no-cache-dir -r requirements.txt
ADD . /app