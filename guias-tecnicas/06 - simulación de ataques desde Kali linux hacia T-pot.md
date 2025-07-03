# Simulación de ataques desde Kali Linux hacia T-Pot

## Objetivo

El propósito de esta guía es documentar el proceso de simulación de ataques desde una máquina Kali Linux hacia un entorno honeypot T-Pot, con el fin de analizar el tráfico malicioso, evaluar los sistemas de detección y familiarizarse con el comportamiento típico de un atacante en una red controlada.

---

## Entorno de pruebas

- **Máquina atacante:** Kali Linux (virtualizada)
- **Máquina honeypot:** T-Pot (basado en Ubuntu Server)
- **Red:** Red local simulada en entorno VMware
- **IP del honeypot:** `192.168.50.153`
- **IP de Kali Linux:** `192.168.50.101`

---

## Herramientas utilizadas

- `nmap`
- `hydra`
- `curl`
- `Nikto`
- `Metasploit`
- Servicios detectados en T-Pot: SSH, HTTP, HTTPS, Telnet, FTP, SMB

---

## Ataques simulados

### 1. Escaneo de puertos con Nmap

```bash
nmap -sS -p- -T4 192.168.50.153
```

### 2. Ataque por fuerza bruta SSH con Hydra

```bash
hydra -l root -P /usr/share/wordlists/rockyou.txt ssh://192.168.50.153
```

Objetivo: Descubrir contraseñas por fuerza bruta.

Resultado esperado: Honeypots SSH como Cowrie registran la IP, credenciales probadas y comandos ejecutados en caso de login exitoso.

### 3. Escaneo de vulnerabilidades web con Nikto

```bash
nikto -host http://192.168.50.153
```

Objetivo: Detectar configuraciones web inseguras o directorios ocultos.

Resultado esperado: Honeypot web (como Dionaea) registra peticiones HTTP anómalas y genera alertas en Kibana.

### 4. Peticiones maliciosas simples con Curl

```bash
curl -X GET http://192.168.50.153/admin
curl -X POST http://192.168.50.153/login --data "user=admin&pass=1234"
```

Objetivo: Simular intentos de acceso no autorizados a interfaces sensibles.

Resultado esperado: Las herramientas de logging capturan intentos y cabeceras HTTP.

5. Uso de Metasploit para explotación

```bash
msfconsole
use auxiliary/scanner/ftp/ftp_version
set RHOSTS 192.168.50.153
run
```

Objetivo: Simular reconocimiento con módulos automatizados.

Resultado esperado: Registro detallado del fingerprinting y alertas de comportamiento automatizado.

Visualización y análisis
Una vez ejecutados los ataques, accedemos al panel de T-Pot en Kibana:


URL: https://192.168.50.153:64297

Usuario: user | Contraseña: tpot

Accedemos a los dashboards:

Suricata alerts: para ver patrones de ataque detectados.

Cowrie sessions: sesiones SSH falsas simuladas.

Dionaea connections: registros de servicios como HTTP, FTP o SMB.

Buenas prácticas
No reutilizar contraseñas reales en los ataques simulados.

Aislar el entorno virtual para evitar tráfico externo real.

Documentar cada ataque con capturas en Kibana (usarlas como anexos en informes).

Automatizar las simulaciones con scripts si se desea repetir escenarios.

Conclusión
Esta simulación permite estudiar la detección temprana de amenazas y validar la efectividad de honeypots en un entorno seguro. T-Pot proporciona una forma eficiente de visualizar, registrar y analizar comportamiento malicioso, siendo una herramienta clave en cualquier entorno de pruebas de ciberseguridad.








