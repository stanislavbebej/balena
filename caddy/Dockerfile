FROM caddy:2.11.9-builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/desec@v1.1.0

FROM caddy:2.11.9-alpine@sha256:003a97808e781aa9f7e75cc2f43d34d461099031faf5e20faefb9f61126836f0

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

CMD /bin/sh -c 'caddy run --config ${CADDY_FILE_PATH:-/etc/caddy/Caddyfile} --adapter caddyfile'
