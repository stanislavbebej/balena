FROM jenkins/inbound-agent:trixie

USER root

RUN apt-get update && apt-get install -y --no-install-recommends \
        samba-common-bin \
        tree \
        wakeonlan \
    && rm -rf /var/lib/apt/lists/*

USER jenkins
