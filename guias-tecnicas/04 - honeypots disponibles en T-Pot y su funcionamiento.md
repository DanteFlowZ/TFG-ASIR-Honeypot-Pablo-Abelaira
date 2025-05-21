# Honeypots disponibles en T-Pot y su funcionamiento

T-Pot integra una amplia colección de honeypots que simulan servicios vulnerables para atraer a atacantes y registrar sus acciones. Esta guía resume los principales honeypots incluidos, su propósito y cómo trabajan.

---

## 🎯 ¿Qué es un honeypot?

Un honeypot es un sistema que simula vulnerabilidades o servicios reales con el objetivo de ser atacado. Su propósito es detectar, registrar y analizar comportamientos maliciosos sin poner en riesgo sistemas reales.

---

## 📦 T-Pot y su enfoque con Docker

T-Pot utiliza **contenedores Docker** para aislar y ejecutar cada honeypot. Esto permite:

- Escalabilidad.
- Mantenimiento individual.
- Aislamiento de servicios.
- Activación personalizada desde el archivo `docker-compose.yml`.

---

## 🧰 Lista de honeypots disponibles en T-Pot

Según la versión que uses, T-Pot incluye hasta **23 honeypots**, entre los más destacados:

| Honeypot       | Descripción breve |
|----------------|-------------------|
| **Cowrie**     | SSH y Telnet falso, captura comandos y credenciales. |
| **Dionaea**    | Emula servicios como SMB, HTTP, FTP para capturar malware. |
| **Conpot**     | Emula sistemas SCADA/ICS industriales. |
| **Heralding**  | Captura credenciales en protocolos como RDP, FTP, SSH, VNC. |
| **Honeytrap**  | Escucha múltiples puertos para conexiones inesperadas. |
| **Snare**      | Honeypot HTTP con respuestas configurables. |
| **Tanner**     | Recolector de payloads HTTP junto a Snare. |
| **Mailoney**   | Simula un servidor SMTP vulnerable a spam/bots. |
| **RedIS**      | Emula un servicio Redis vulnerable. |
| **Glutton**    | Escucha muchos puertos, genera sesiones para recolectar datos. |
| **ElasticHoney** | Simula un servicio Elasticsearch vulnerable. |
| **HoneySAP**   | Simula sistemas SAP vulnerables a ataques de autenticación. |

*Y muchos más...*

---

## 🧾 ¿Cómo se activan?

Durante la instalación de T-Pot, puedes elegir entre varias configuraciones predefinidas (`standard`, `suricata`, `p0f`, etc.). Cada una activa un conjunto de honeypots diferente.

El archivo responsable de activar los honeypots es:


Por ejemplo:

```bash
docker-compose -f /opt/tpot/etc/compose/docker-compose.standard.yml up -d

Desde ahí puedes ver qué honeypots están habilitados y modificar si deseas personalizar la instalación.


🧪 ¿Cómo funcionan?
Flujo típico de un ataque:
El atacante escanea la red y encuentra un puerto abierto simulado por un honeypot.

Intenta conectarse, por ejemplo vía SSH.

El honeypot (Cowrie, por ejemplo) responde como si fuera un sistema real.

Se registran:

IP origen.

Tiempo de conexión.

Comandos introducidos.

Archivos enviados.

Credenciales utilizadas.

Esta información se envía a Logstash → Elasticsearch → Kibana (o Elasticvue).

📁 Archivos generados
Cada honeypot puede generar logs independientes, accesibles en /data dentro del contenedor o a través de Kibana.

📌 Recomendaciones
No habilites todos los honeypots a la vez si tu hardware es limitado.

Puedes ver los contenedores activos con:

docker ps

Para detener uno específico

docker stop <nombre_contenedor>

✅ Verificación
 Honeypots levantados correctamente vía Docker.

 Logs visibles en Kibana.

 Pruebas de ataque realizadas desde Kali.

 Información registrada y exportada.



