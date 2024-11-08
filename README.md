# Guía para ejecutar el proyecto con Docker en Windows

Este proyecto puede ser ejecutado fácilmente usando Docker y Docker Compose en Windows. Asegúrate de tener Docker Desktop instalado y configurado correctamente en tu máquina.

### Requisitos previos

1. **Instalar Docker Desktop para Windows**:  
   [Descargar Docker Desktop](https://www.docker.com/products/docker-desktop)  
   Docker Desktop utiliza **WSL 2** (Windows Subsystem for Linux 2) para ejecutar contenedores Linux.

2. **Habilitar WSL 2**: Si aún no lo has hecho, sigue las instrucciones oficiales para habilitar WSL 2:  
   [Guía para instalar WSL 2 en Docker Desktop](https://docs.docker.com/desktop/windows/wsl/)

3. **Verificar la instalación de Docker Compose**: Docker Compose se instala automáticamente con Docker Desktop. Para verificar si está instalado, abre PowerShell o CMD y ejecuta:
   
   ```bash
   docker-compose --version

4. **Expose daemon on tcp://localhost:2375 without TLS**: Entrar a la configuración general de Docker desktop y habilitar la opción "Expose daemon on tcp://localhost:2375 without TLS"
  
