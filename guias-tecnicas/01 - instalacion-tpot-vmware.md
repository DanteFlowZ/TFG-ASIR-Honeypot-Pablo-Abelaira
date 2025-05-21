# Instalación y configuración de T-Pot en VMware

## Requisitos previos

- VMware Workstation o VMware Player instalado.
- Imagen ISO de Ubuntu Server 20.04 LTS (recomendado por T-Pot).
- Al menos 4 GB de RAM y 2 CPU asignadas.
- Acceso a Internet para descarga de paquetes.
- Archivo de instalación de T-Pot: `install.sh` desde el repositorio oficial.

---

## Paso 1: Crear la máquina virtual en VMware

1. Abrir VMware y seleccionar "Crear una nueva máquina virtual".
2. Seleccionar "Instalación típica".
3. Usar imagen ISO de Ubuntu Server.
4. Asignar nombre a la máquina, por ejemplo: `tpot-server`.
5. Configurar:
   - Memoria: mínimo 4 GB (recomendado 8 GB).
   - Procesadores: mínimo 2.
   - Disco duro: al menos 64 GB (mejor 100 GB).
6. Tipo de red: **Bridged** o **NAT con puertos redireccionados** (según tu configuración).
7. Finalizar y lanzar la VM.

---

## Paso 2: Instalar Ubuntu Server

1. Elegir idioma, distribución de teclado y zona horaria.
2. Crear usuario (ej: `tpotadmin`) y contraseña.
3. Seleccionar instalación mínima.
4. Activar OpenSSH Server (opcional pero recomendable).
5. Completar instalación y reiniciar.

---

## Paso 3: Actualizar el sistema

```bash
sudo apt update && sudo apt upgrade -y

## Paso 4: Descargar y ejecutar el instalador de T-Pot

cd /opt
sudo apt install git -y
sudo git clone https://github.com/telekom-security/tpotce
cd tpotce/iso/installer/
sudo chmod +x install.sh
sudo ./install.sh

⚠️ Durante la instalación, selecciona el tipo de honeypots que deseas incluir. Recomendado: "Standard Installation".

## Paso 5: Reiniciar y acceder al entorno T-Pot

Una vez finalizada la instalación:

Reinicia el sistema con sudo reboot.

Accede vía navegador a https://<IP-DE-TU-MAQUINA>:64297.

Usuario y contraseña: los que definiste durante la instalación (WEB_USER).


NOTAS FINALES
-------------
Puede tardar bastante la instalación (~1h), ya que descarga muchas imágenes de Docker.

Asegúrate de abrir los puertos necesarios si estás en una red NAT.

Si algo falla, revisa los logs con journalctl -xe o consulta los servicios con sudo docker ps.