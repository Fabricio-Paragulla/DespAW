FROM node:22-alpine AS build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build-only

FROM fabricio07/ubnginx:v1

# Limpiamos el html por defecto
RUN rm -rf /var/www/html/*

# Copiamos tu app compilada
COPY --from=build-stage /app/dist /var/www/html

# Ajustamos permisos
RUN chown -R www-data:www-data /var/www/html