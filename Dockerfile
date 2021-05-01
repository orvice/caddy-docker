FROM caddy:2-builder AS builder

RUN xcaddy build \
    --with  magnax.ca/caddy/gopkg

FROM caddy:2
COPY --from=builder /usr/bin/caddy /usr/bin/caddy