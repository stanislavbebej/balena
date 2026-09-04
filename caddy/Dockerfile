FROM caddy:2.11.4-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec@v1.1.0

FROM caddy:2.11.4-alpine@sha256:5f5c8640aae01df9654968d946d8f1a56c497f1dd5c5cda4cf95ab7c14d58648

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD /bin/sh -c 'caddy run --config ${CADDY_FILE_PATH:-/etc/caddy/Caddyfile} --adapter caddyfile'
