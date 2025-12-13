#!/bin/sh
set -e

echo "🚀 Iniciando configuración automática del Miniblog..."

# 1. Asegurar que las carpetas existen SIEMPRE (usamos -p)
echo "📂 Creando/Verificando carpetas..."
mkdir -p var/cache
mkdir -p var/logs
mkdir -p cache
mkdir -p config

# 2. Asignar permisos (777 para evitar problemas en el laboratorio)
echo "🔒 Ajustando permisos..."
chmod -R 777 var cache config
# Si existe la base de datos, aseguramos permisos también
if [ -f "config/app.db" ]; then
    chmod 666 config/app.db
fi

# 3. Instalar dependencias si falta la carpeta vendor
if [ ! -d "vendor" ]; then
    echo "📦 Instalando dependencias con Composer..."
    composer install --no-interaction --optimize-autoloader
else
    echo "✅ Dependencias ya instaladas."
fi

# 4. Crear Base de Datos si no existe
if [ ! -f "config/app.db" ]; then
    echo "🗄️ Creando esquema de Base de Datos..."
    # Ejecutamos el comando de creación
    php console create-schema
else
    echo "✅ La Base de Datos ya existe."
fi

echo "🟢 Todo listo. Arrancando PHP-FPM..."

# 5. Ejecutar el comando principal del contenedor (php-fpm)
exec "$@"