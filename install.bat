@echo off
REM Cambia al directorio donde se encuentra el script BAT
cd /d "%~dp0"

echo Descargando las últimas versiones de las imágenes de los contenedores...
docker compose up

echo Descarga completada. Puedes iniciar los contenedores desde Docker Desktop.
pause
