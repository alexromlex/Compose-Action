# FROM alpine:3.8
# FROM python:3.10.13-slim-bookworm
FROM alpine:3.10
RUN apk add --no-cache openssh bash
ADD entrypoint.sh /entrypoint.sh
WORKDIR /github/workspace
ENTRYPOINT /bin/bash /entrypoint.sh
