FROM php:7.4-fpm-alpine

# 1. Instalamos utilidades y SQLite
RUN apk add --no-cache git unzip sqlite-dev

# 2. Instalamos extensiones PHP
RUN docker-php-ext-install pdo pdo_sqlite

# 3. Copiamos Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www/html

# --- Configuración del Entrypoint ---

# 4. Copiamos el script al contenedor
COPY entrypoint.sh /usr/local/bin/

# 5. Le damos permisos de ejecución
RUN chmod +x /usr/local/bin/entrypoint.sh

# 6. Definimos el ENTRYPOINT (El script que arranca primero)
ENTRYPOINT ["entrypoint.sh"]

# 7. Definimos el CMD (El comando que ejecutará el script al final con exec "$@")
CMD ["php-fpm"]