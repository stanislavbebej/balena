FROM caddy:2.11.7-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec@v1.1.0

FROM caddy:2.11.7-alpine@sha256:eb4d35b7452d1ab6171fbdbe8d9275b2301dad6dad92115d91e19fb9b24d510f

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD /bin/sh -c 'caddy run --config ${CADDY_FILE_PATH:-/etc/caddy/Caddyfile} --adapter caddyfile'
