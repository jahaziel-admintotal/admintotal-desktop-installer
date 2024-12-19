#!/bin/bash

# Cambia al directorio donde se encuentra el script
cd "$(dirname "$0")"

# Obtener la IP local de la máquina (IPv4)
SERVER_IP=$(hostname -I | awk '{print $1}')

# Crear el archivo .env
echo "Creando archivo .env con las variables necesarias..."
cat <<EOF > .env
DEBUG=0
SERVER_IP=$SERVER_IP
DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1] $SERVER_IP
CSRF_TRUSTED_ORIGINS=localhost:8081 localhost:3001 127.0.0.1:8081 127.0.0.1:3001 $SERVER_IP:8081 $SERVER_IP:3001
CELERY_BROKER=redis://redis:6379/0
CELERY_BACKEND=redis://redis:6379/0
DB_PORT=5433
DB_HOST=db
DB_NAME=admintotal_desktop
DB_USER=admintotal
DB_PASSWORD=postgres
ADMINTOTAL_URL_TEMPLATE=https://{0}.admintotal.com
LOCAL_DEVELOPMENT=0
POSTGRES_DB=admintotal_desktop
POSTGRES_USER=admintotal
POSTGRES_PASSWORD=postgres
EOF

echo "Archivo .env creado con éxito."

# Descargar las últimas versiones de las imágenes de los contenedores
echo "Descargando las últimas versiones de las imágenes de los contenedores..."
docker compose up -d

echo "Descarga completada. Puedes iniciar los contenedores desde Docker Desktop."
