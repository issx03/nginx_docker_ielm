FROM php:7.4-cli

# Instalación de dependencias del sistema
RUN apt-get update && apt-get install -y \
    libsqlite3-dev \
    git \
    unzip \
    && rm -rf /var/lib/apt/lists/*

# Instalación de extensiones PHP necesarias
RUN docker-php-ext-install pdo pdo_sqlite

# Instalación de Composer
RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php --install-dir=/usr/local/bin --filename=composer \
    && php -r "unlink('composer-setup.php');"

# Copiar el proyecto al contenedor
WORKDIR /app
COPY . .

# Instalar dependencias del proyecto (Silex, Doctrine, etc.)
RUN composer install --no-interaction

# Crear la base de datos SQLite
RUN php console create-schema || echo "⚠ Aviso: fallo durante build, ejecuta manualmente si es necesario"

# Ajuste de permisos para logs y cache
RUN chmod -R 777 logs cache config || true \
    && chmod -R 777 config/schema.sqlite || true

# Exponer el puerto 80
EXPOSE 80

# Comando para arrancar el servidor embebido de PHP
CMD ["php", "-S", "0.0.0.0:80", "-t", "web"]