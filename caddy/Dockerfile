FROM caddy:2.11.8-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec@v1.1.0

FROM caddy:2.11.9-alpine@sha256:0bbb055bda6793c999bde78b1b5ce3e89f829fb031af2cf50056ea1246559fee

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD /bin/sh -c 'caddy run --config ${CADDY_FILE_PATH:-/etc/caddy/Caddyfile} --adapter caddyfile'
