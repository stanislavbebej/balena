FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

ARG SUMMON_SECRETS_MANAGER_VERSION=0.4.1
ARG SUMMON_VERSION=0.11.0

# Instal CyberArk Summon
RUN wget -qO - https://github.com/cyberark/summon/releases/download/v${SUMMON_VERSION}/summon-linux-arm64.tar.gz | tar -zxf - -C /usr/local/bin summon

# Instal Summon providers
RUN mkdir -p /usr/local/lib/summon \
    && wget -qO /usr/local/lib/summon/summon-secrets-manager https://github.com/stanislavbebej-ext43345/summon-secrets-manager/releases/download/v${SUMMON_SECRETS_MANAGER_VERSION}/summon-secrets-manager-linux-arm64 \
    && chmod +x /usr/local/lib/summon/summon-secrets-manager

CMD /bin/sh -c 'echo "Getting secrets ..." && summon --yaml "$SECRETS_YML" sleep 1d'
