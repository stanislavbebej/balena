FROM caddy:2.11.7-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec@v1.1.0

FROM caddy:2.11.7-alpine@sha256:d8542f48d34a9cf4e4c11a478865229840e87e4c96ea3f439101f31a5d35f75f

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD /bin/sh -c 'caddy run --config ${CADDY_FILE_PATH:-/etc/caddy/Caddyfile} --adapter caddyfile'
