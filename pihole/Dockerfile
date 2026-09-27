FROM pihole/pihole:2026.09.0@sha256:5b9c8cf51de7d6d3f2240dbe72baf5f06e1fd39cb4d77a99fab4fa13e23bd1be

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
