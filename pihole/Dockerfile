FROM pihole/pihole:2026.07.2@sha256:f7d1be836e3bc608b56d82fc9904f5a831cdfbc0dc9c6d58f94e4c985c70038b

ENV FTLCONF_dns_listeningMode='ALL'
ENV FTLCONF_dns_upstreams='8.8.8.8;208.67.222.222;1.1.1.1'
ENV FTLCONF_ntp_ipv4_active='false'
ENV FTLCONF_ntp_ipv6_active='false'
ENV FTLCONF_ntp_sync_active='false'
ENV FTLCONF_webserver_api_password=''

RUN mkdir -p /etc/dnsmasq.d \
    && echo "bind-interfaces" >/etc/dnsmasq.d/90-resin-dns.conf \
    && echo "except-interface=resin-dns" >>/etc/dnsmasq.d/90-resin-dns.conf

ENV FTLCONF_misc_etc_dnsmasq_d='true'
