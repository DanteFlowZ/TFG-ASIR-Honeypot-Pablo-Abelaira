⚙️ Componentes y funcionalidades de T-Pot
T-Pot ofrece una solución integral para la detección, monitorización y análisis de amenazas mediante una combinación de honeypots, herramientas de visualización, servicios de red y motores de análisis. Sus servicios se dividen en cinco grupos principales:

1. 🖥️ Servicios del sistema operativo
SSH: Acceso remoto seguro a la máquina mediante el usuario configurado durante la instalación del sistema operativo.

2. 📊 Elastic Stack
T-Pot incluye la pila completa de Elastic para la gestión y visualización de datos:

Elasticsearch: Almacena todos los eventos generados por los honeypots.

Logstash: Encargado de recibir, transformar y enviar los datos a Elasticsearch.

Kibana: Interfaz visual para explorar los datos mediante dashboards interactivos.

3. 🛠️ Herramientas integradas
Accesibles mediante NGINX y protegidas con autenticación básica:

NGINX: Actúa como reverse proxy para acceso seguro a las interfaces web de T-Pot.

CyberChef: Aplicación web para codificación, cifrado, análisis y manipulación de datos.

Elasticvue: Frontend web para explorar y gestionar el clúster de Elasticsearch.

T-Pot Attack Map: Mapa animado que muestra los ataques en tiempo real.

Spiderfoot: Herramienta OSINT para automatizar la recolección de inteligencia.

4. 🐝 Honeypots
T-Pot permite desplegar hasta 23 honeypots diferentes, seleccionables mediante el archivo docker-compose.yml. Algunos destacados son:

Cowrie: Emulación SSH/Telnet, captura comandos de atacantes.

Dionaea: Captura malware distribuido por red (SMB, FTP, HTTP, etc.).

Conpot: Simula infraestructuras SCADA/ICS.

Honeytrap: Detecta escaneos y se adapta dinámicamente.

Heralding: Registra intentos de autenticación en múltiples protocolos.

Elasticpot, Mailoney, Citrixpot, entre otros.

5. 🔐 Network Security Monitoring (NSM)
Monitorización avanzada del tráfico de red con herramientas de análisis pasivo y activo:

Fatt: Script basado en PyShark para extracción de metadatos de red desde archivos .pcap o tráfico en vivo.

P0f: Identificación de sistemas operativos mediante análisis pasivo del tráfico.

Suricata: Motor de detección de intrusos (IDS) que analiza el tráfico en busca de patrones maliciosos.

👤 Tipos de usuarios en T-Pot
Durante la instalación y el uso de T-Pot, se utilizan distintos tipos de cuentas. Es importante conocer sus diferencias para evitar errores de autenticación:

Servicio	Tipo de cuenta	Usuario / Grupo	Descripción
SSH	OS	<OS_USERNAME>	Usuario creado durante la instalación del sistema operativo.
NGINX, CyberChef, etc.	BasicAuth	<WEB_USER>	Usuario web creado durante la instalación de T-Pot.
Spiderfoot	BasicAuth	<WEB_USER>	Igual que el anterior.
T-Pot (interno)	OS	tpot	Usuario del sistema reservado por los servicios internos de T-Pot.
T-Pot Logs	BasicAuth	<LS_WEB_USER>	Usuario gestionado automáticamente por los servicios de logging de T-Pot.
