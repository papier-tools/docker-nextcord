FROM alpine:latest

LABEL Maintainer="PapierPain"
LABEL Description="Discord container with Nextcord"

WORKDIR /bot

COPY requirements.txt /bot

RUN apk add --update --no-cache gcc musl-dev ffmpeg python3 py3-pip python3-dev libffi-dev libressl-dev libsodium-dev opus opus-dev && \
    SODIUM_INSTALL=system python3 -m pip install -r requirements.txt --no-cache-dir && \
    rm requirements.txt
