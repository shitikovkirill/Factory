FROM python:3.7.2-alpine3.8

ARG requirements=requirements.txt

WORKDIR /app

ADD $requirements /app/requirements.txt
RUN pip install -r requirements.txt
ADD . /app