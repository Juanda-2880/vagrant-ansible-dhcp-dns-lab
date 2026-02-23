FROM rockylinux:9

RUN dnf install -y bind bind-utils dhcp-server && \
    dnf clean all

EXPOSE 53/udp 53/tcp 67/udp

CMD /usr/sbin/named -u named && /usr/sbin/dhcpd -f -d