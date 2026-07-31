FROM registry.access.redhat.com/ubi9/ubi

COPY cinc /cinc

WORKDIR /cinc

RUN curl -sSfL https://omnitruck.cinc.sh/install.sh | bash -s -- -v 19 \
    && cinc-client -z --config-option umask=2 -o 'recipe[bundle::default]' -l info -N $HOSTNAME \
    && ohai >/opt/ohai.json \
    && dnf update -y \
    && dnf remove -y cinc \
    && dnf clean all \
    && find /tmp -delete 2>/dev/null
