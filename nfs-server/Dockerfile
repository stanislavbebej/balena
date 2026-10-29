FROM alpine:3.24.3@sha256:be2656061b536c1883c4034790e21d0a09c5aaaf51968b89368a3c0371ea2c9a

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
    && apk add nfs-utils openrc --no-cache \
    && rc-update add nfs \
    && echo "/nfs 192.168.1.18/32(rw,sync,nohide,no_subtree_check,insecure_locks,insecure,all_squash,fsid=root,anonuid=0,anongid=0)" >>/etc/exports

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
