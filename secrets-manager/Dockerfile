# Dockerfile.raspberry-pi
FROM golang:1.27-alpine AS builder

ARG SUMMON_REPO=https://github.com/cyberark/summon.git
ARG SUMMON_VERSION=0.13.1

ENV CGO_ENABLED=0
ENV GOARCH=arm
ENV GOARM=6

RUN apk add --no-cache binutils git upx \
    && git clone --depth 1 --branch v${SUMMON_VERSION} ${SUMMON_REPO} /src/summon \
    && cd /src/summon \
    && go mod tidy \
    && go build -ldflags "-s -w" -o /summon cmd/main.go \
    && strip /summon \
    && upx -q -9 /summon

FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

COPY --from=builder /summon /usr/local/bin/summon

CMD /bin/sh -c 'echo "Getting secrets ..." && summon -p /dev/null --yaml "${SECRETS_YML:-"DUMMY_SECRET: default123"}" sleep ${ROTATION_PERIOD:-1d}'
