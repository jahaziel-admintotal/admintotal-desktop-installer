#!/bin/bash

# Ir a la carpeta padre donde está el archivo docker-compose.yaml
cd ..

# Actualizar las imágenes de los contenedores
echo "Actualizando imágenes de los contenedores..."
docker compose pull

# Reiniciar los contenedores
echo "Reiniciando los contenedores..."
docker compose up -d --force-recreate

# Confirmación de actualización completada
echo "Actualización completada."
