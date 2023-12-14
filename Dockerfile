# FROM alpine:3.8
FROM python:3.10.13-slim-bookworm
RUN apt-get update && apt-get install --no-install-recommends && \
	apt-get clean && rm -rf /var/lib/apt/lists/*
RUN apt-get --no-cache openssh bash
ADD entrypoint.sh /entrypoint.sh
WORKDIR /github/workspace
ENTRYPOINT /bin/bash /entrypoint.sh
