#!/bin/bash

# Cambia al directorio donde se encuentra el script
cd "$(dirname "$0")"

# Actualizar las imágenes de los contenedores
echo "Actualizando imágenes de los contenedores..."
docker compose pull

# Reiniciar los contenedores
echo "Reiniciando los contenedores..."
docker compose up -d --force-recreate

# Confirmación de actualización completada
echo "Actualización completada."
