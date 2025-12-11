# Usamos la imagen oficial de nginx
FROM nginx:alpine
# Copiamos el archivo de configuración
COPY conf/default.conf /etc/nginx/conf.d/default.conf
# Copiamos el archivo 404.html
COPY 404.html /usr/share/nginx/html/404.html
# Exponemos el puerto 80
EXPOSE 80