FROM pihole/pihole:2026.10.1@sha256:30f803ad5dd60ff96cc0a63008a2e9271af481c1b0399a182192b2e91152c1f9

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
