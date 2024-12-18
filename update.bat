@echo off
REM Cambia al directorio donde se encuentra el script BAT
cd /d "%~dp0"

echo Actualizando imágenes de los contenedores...
docker compose pull

echo Reiniciando los contenedores...
docker compose up -d --force-recreate

echo Actualización completada.
pause
