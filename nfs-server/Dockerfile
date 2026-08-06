FROM alpine:3.24.1@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
    && apk add nfs-utils openrc --no-cache \
    && rc-update add nfs \
    && echo "/nfs 192.168.1.18/32(rw,sync,nohide,no_subtree_check,insecure_locks,insecure,all_squash,fsid=root,anonuid=0,anongid=0)" >>/etc/exports

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
