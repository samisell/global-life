FROM python:3.9-alpine3.13
LABEL maintainer="samisell.com.ng"

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
COPY ./globalsavingproject /globalsavingproject

WORKDIR /globalsavingproject
EXPOSE 8000

RUN python -m venv /py && \
    /py/bin/pip install --upgrade pip && \
    /py/bin/pip install -r /requirements.txt && \
    adduser --disabled-password --no-create-home globallife \

ENV PATH="/py/bin:$PATH"

USER globallife