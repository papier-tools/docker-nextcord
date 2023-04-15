FROM python:3.9-alpine

LABEL Maintainer="PapierPain, Skilldus, Sinus Torvalds"
LABEL Description="Discord container with Nextcord"

WORKDIR /bot

RUN apk add --no-cache \
    gcc \
    musl-dev \
    ffmpeg \
    python3-dev \
    libffi-dev \
    libressl-dev \
    libsodium-dev \
    opus \
    opus-dev

COPY requirements.txt /bot
RUN SODIUM_INSTALL=system python3 -m pip install -r requirements.txt
