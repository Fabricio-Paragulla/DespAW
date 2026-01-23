FROM fabricio07/ubsecurity:v1

# Instalar Nginx
RUN apt-get update && apt-get install -yq --no-install-recommends \
    nginx \
    && rm -rf /var/lib/apt/lists/*

# Configuración de permisos y logs
RUN mkdir -p /var/log/nginx
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

EXPOSE 80

# Arrancamos Nginx en primer plano para que Docker no se cierre
CMD ["nginx", "-g", "daemon off;"]