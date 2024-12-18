@echo off
REM Cambia al directorio donde se encuentra el script BAT
cd /d "%~dp0"

REM Ejecuta el comando docker compose up
docker compose up

REM Mantén la ventana abierta
pause