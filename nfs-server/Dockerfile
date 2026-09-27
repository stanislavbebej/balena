FROM alpine:3.24.2@sha256:294b683cb724975bec92580e1e685676bd4b50bda910ddb8c51d4cabeaec77e6

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
    && apk add nfs-utils openrc --no-cache \
    && rc-update add nfs \
    && echo "/nfs 192.168.1.18/32(rw,sync,nohide,no_subtree_check,insecure_locks,insecure,all_squash,fsid=root,anonuid=0,anongid=0)" >>/etc/exports

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
