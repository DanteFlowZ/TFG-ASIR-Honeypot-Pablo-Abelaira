# Configuración de la red simulada entre Kali Linux y T-Pot (VMware)

Esta guía describe cómo crear una red local simulada utilizando VMware Workstation para realizar pruebas de ataques y análisis de tráfico entre una máquina atacante (Kali Linux) y una víctima con T-Pot instalado (Ubuntu Server).

---

## 📌 Objetivo

Establecer comunicación directa entre Kali y T-Pot dentro de una red privada, simulando un entorno corporativo real con control total del tráfico.

---

## 🛠 Requisitos

- VMware Workstation instalado.
- Dos máquinas virtuales:
  - **Ubuntu Server con T-Pot**
  - **Kali Linux**
- Al menos un adaptador de red configurado como **red interna** o **host-only** para crear una red aislada.

---

## 🧱 Paso 1: Crear ambas VMs

Ya deberías tener:

- `tpot-server` (Ubuntu + T-Pot instalado).
- `kali-attacker` (Kali Linux actualizada y funcional).

---

## 🌐 Paso 2: Configurar red interna

### Opción recomendada: Adaptador **Host-Only** o **Red Interna** (según VMware)

1. Apaga ambas máquinas virtuales.
2. Ve a la configuración de red de **cada VM** en VMware.
3. Asigna **Adaptador de red → Host-only** o **Red interna personalizada (Custom: VMnet1 o similar)**.
4. Guarda los cambios y arranca ambas máquinas.

---

## 🖧 Paso 3: Asignar IPs estáticas (recomendado)

### En T-Pot (Ubuntu Server)

Edita el archivo de configuración de red:
```bash
sudo nano /etc/netplan/00-installer-config.yaml

network:
  version: 2
  ethernets:
    ens33:
      dhcp4: no
      addresses:
        - 192.168.159.130/24
      gateway4: 192.168.159.1
      nameservers:
        addresses: [8.8.8.8, 1.1.1.1]

sudo netplan apply

EN KALI LINUX

En la terminal de comandos pondremos los siguientes comandos
auto eth0
iface eth0 inet static
  address 192.168.159.140
  netmask 255.255.255.0
  gateway 192.168.159.1

sudo systemctl restart networking

## Paso 4: comprobamos conectividad

Desde Kali:
ping 192.168.159.130

Desde el T-pot
ping 192.168.159.140

🎯 Resultado
Una red cerrada y funcional entre Kali y T-Pot que te permite:

Simular ataques reales.

Observar tráfico y alertas en T-Pot.

Acceder a servicios vía web si configuras el firewall correctamente.

🔐 Consejos de seguridad
Esta red no tiene acceso a internet si usas solo “Host-only”.

Si necesitas acceso desde tu navegador para ver Kibana, abre puertos específicos o usa NGINX reverse proxy con autenticación básica.