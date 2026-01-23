FROM ubuntu:22.04

# Evitar preguntas durante la instalación
ENV DEBIAN_FRONTEND=noninteractive

# Instalar utilidades básicas
RUN apt-get update && apt-get install -yq --no-install-recommends \
    nano \
    git curl wget \
    iputils-ping net-tools \
    sudo \
    openssh-server \
    ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Configuración básica de SSH
RUN mkdir /var/run/sshd
EXPOSE 22

# Comando por defecto
CMD ["/usr/sbin/sshd", "-D"]