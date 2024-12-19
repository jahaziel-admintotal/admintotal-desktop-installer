@echo off
REM Cambia al directorio donde se encuentra el script BAT
cd /d "%~dp0"

REM Obtener la IP local de la máquina
for /f "tokens=2 delims=:" %%A in ('ipconfig ^| findstr /c:"IPv4 Address"') do (
    for /f "tokens=*" %%B in ("%%A") do set SERVER_IP=%%B
)

REM Eliminar espacios adicionales
set SERVER_IP=%SERVER_IP: =%

REM Crear el archivo .env
echo Creando archivo .env con las variables necesarias...
(
    echo DEBUG=0
    echo SERVER_IP=%SERVER_IP%
    echo DJANGO_ALLOWED_HOSTS=localhost 127.0.0.1 [::1] 10.26.0.225 10.26.0.225
    echo CSRF_TRUSTED_ORIGINS=localhost:8081 localhost:3001 127.0.0.1:8081 127.0.0.1:3001 10.26.0.225:8081 10.26.0.225:3001
    echo CELERY_BROKER=redis://redis:6379/0
    echo CELERY_BACKEND=redis://redis:6379/0
    echo DB_PORT=5433
    echo DB_HOST=db
    echo DB_NAME=admintotal_desktop
    echo DB_USER=admintotal
    echo DB_PASSWORD=postgres
    echo ADMINTOTAL_URL_TEMPLATE=https://{0}.admintotal.com
    echo LOCAL_DEVELOPMENT=0
) > .env

echo Archivo .env creado con éxito.

REM Descargar las últimas versiones de las imágenes de los contenedores
echo Descargando las últimas versiones de las imágenes de los contenedores...
docker compose up -d

echo Descarga completada. Puedes iniciar los contenedores desde Docker Desktop.
pause
