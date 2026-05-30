# Usamos una imagen de servidor web ultraligera
FROM nginx:alpine

# Copiamos nuestro código (index.html) a la carpeta pública del servidor web
COPY index.html /usr/share/nginx/html/index.html

# Exponemos el puerto 80 para el tráfico web
EXPOSE 80
