FROM python:3.12.3-alpine3.19

LABEL Maintainer="PapierPain"
LABEL Description="Discord container with Nextcord"

WORKDIR /bot

COPY requirements.txt /bot

RUN apk add --update --no-cache gcc musl-dev ffmpeg libffi-dev libressl-dev libsodium-dev opus opus-dev && \
    SODIUM_INSTALL=system python -m pip install -r requirements.txt --no-cache-dir && \
    rm requirements.txt
