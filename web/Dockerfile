# Usamos la imagen oficial de nginx
FROM nginx:alpine
# Copiamos los archivos que están en TU repo dentro de la imagen
COPY conf/default.conf /etc/nginx/conf.d/default.conf
# Copiamos los archivos html
COPY html /usr/share/nginx/html
# Exponemos el puerto 80
EXPOSE 80
