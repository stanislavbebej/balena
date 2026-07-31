FROM alpine:3.23.5@sha256:fd791d74b68913cbb027c6546007b3f0d3bc45125f797758156952bc2d6daf40

COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh \
    && apk add nfs-utils openrc --no-cache \
    && rc-update add nfs \
    && echo "/nfs *(ro,no_subtree_check,insecure,all_squash,fsid=root)" >>/etc/exports

ENTRYPOINT ["/entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]
