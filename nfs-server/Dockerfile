FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
    && apk add nfs-utils openrc --no-cache \
    && rc-update add nfs \
    && echo "/nfs *(ro,no_subtree_check,insecure,all_squash,fsid=root)" >>/etc/exports

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
