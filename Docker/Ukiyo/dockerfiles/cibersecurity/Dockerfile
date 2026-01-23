FROM fabricio07/ubbase:v1

# Instalar herramientas de seguridad
RUN apt-get update && apt-get install -y \
    nmap \
    iproute2 \
    procps \
    && rm -rf /var/lib/apt/lists/*

# Directorio de trabajo
WORKDIR /root/admin/security

CMD ["/usr/sbin/sshd", "-D"]