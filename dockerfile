FROM alpine:3.21.2

RUN --mount=type=cache,target=/var/cache/apt \
    --mount=type=cache,target=/var/lib/apt \
    apk update && \
    apk add -y --no-cache dante-server

COPY ./run.sh /run.sh

RUN chmod +x /run.sh
 
CMD "/run.sh"