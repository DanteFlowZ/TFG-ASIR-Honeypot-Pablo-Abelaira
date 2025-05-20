🛡️ T-Pot Honeypot Deployment & Analysis

Este repositorio contiene el desarrollo y análisis de un entorno de honeypots utilizando T-Pot, una distribución todo-en-uno para la detección, captura y visualización de ciberataques mediante la integración de múltiples honeypots, herramientas de visualización, monitoreo de red y servicios de análisis forense.

El proyecto ha sido desarrollado como parte de un Trabajo de Fin de Grado (TFG), con el objetivo de demostrar el valor que puede aportar T-Pot en un entorno empresarial simulado, tanto en detección de amenazas como en análisis de patrones de ataque.

📚 Índice

¿Qué es T-Pot?

Componentes de T-Pot

  1. Servicios del sistema operativo

  2. Elastic Stack

  3. Herramientas integradas

4. Honeypots disponibles

5. Monitorización de red (NSM)

6. Tipos de usuarios

Objetivos del proyecto

Simulación de ataques

Resultados y análisis

Conclusiones

¿Qué es T-Pot?

T-Pot es una plataforma de código abierto desarrollada por Deutsche Telekom que combina múltiples honeypots, herramientas de análisis y visualización en una única solución desplegable mediante contenedores Docker. Su propósito es recopilar información de ciberataques, estudiar comportamientos maliciosos y facilitar el análisis forense de forma estructurada y visual.

T-Pot destaca por:

Ser fácil de desplegar gracias a su sistema automatizado basado en Docker.

Incluir 20+ honeypots distintos.

Incorporar la pila ELK para análisis y visualización en tiempo real.

Facilitar el acceso remoto seguro a través de NGINX.

Componentes de T-Pot

1. Servicios del sistema operativo

SSH: Proporciona acceso remoto seguro a la máquina virtual donde está desplegado T-Pot, mediante el usuario que se define al instalar el sistema operativo (por ejemplo, Ubuntu Server).

2. Elastic Stack

El núcleo de visualización y análisis de T-Pot está compuesto por la pila Elastic Stack, también conocida como ELK:

Elasticsearch: Motor de búsqueda y análisis de datos, encargado de almacenar todos los eventos generados por los honeypots.

Logstash: Sistema de ingesta de datos. Recoge los eventos de cada contenedor y los envía estructurados a Elasticsearch.

Kibana: Herramienta de visualización de datos. Permite explorar todos los ataques registrados mediante dashboards personalizables, gráficos de líneas, mapas geográficos, tablas, etc.

3. Herramientas integradas

Estas herramientas se acceden a través de NGINX (reverse proxy) con autenticación básica y están pensadas para facilitar el análisis, visualización y gestión del entorno:

NGINX: Reverse proxy que permite acceder de forma segura a todas las interfaces web del sistema (Kibana, CyberChef, etc.).

CyberChef: Herramienta para codificación, descifrado, análisis de datos, forense digital y más.

Elasticvue: Interfaz web para navegar y realizar consultas directamente sobre el clúster de Elasticsearch.

T-Pot Attack Map: Mapa animado que muestra visualmente en tiempo real los ataques detectados y sus ubicaciones geográficas.

Spiderfoot: Herramienta de automatización OSINT (Open Source Intelligence) para recolección y análisis de inteligencia sobre IPs, dominios, correos, etc.

4. Honeypots disponibles

T-Pot ofrece más de 20 honeypots seleccionables mediante docker-compose.yml. Algunos de los más destacados incluyen:

Cowrie: Emula servicios SSH/Telnet. Captura comandos introducidos por atacantes.

Dionaea: Diseñado para capturar malware distribuido mediante SMB, FTP, HTTP, etc.

Conpot: Simula infraestructuras industriales (SCADA/ICS).

Heralding: Emula múltiples protocolos (RDP, VNC, FTP, etc.) y registra intentos de autenticación.

Honeytrap: Honeypot adaptativo que reacciona a conexiones entrantes creando servicios dinámicos.

Mailoney, Citrixpot, Elasticpot, entre otros.

Cada uno de estos honeypots genera logs que son recolectados por Logstash y enviados a Elasticsearch para su análisis en Kibana.

5. Monitorización de red (NSM)

T-Pot incluye herramientas que permiten observar el tráfico de red y obtener inteligencia pasiva:

Fatt: Basado en PyShark, analiza archivos .pcap o tráfico en vivo y extrae metadatos, fingerprints, protocolos y patrones de conexión.

P0f: Herramienta pasiva de fingerprinting. Identifica sistemas operativos, uptime, y otras características sin necesidad de enviar paquetes.

Suricata: IDS/IPS (motor de detección de intrusos) capaz de analizar el tráfico de red y detectar amenazas conocidas en tiempo real.

6. Tipos de usuarios

Durante la instalación y el uso de T-Pot se crean varios tipos de cuentas. Es importante diferenciarlas:

Servicio

Tipo de cuenta

Usuario / Grupo

Descripción

SSH

OS

<OS_USERNAME>

Usuario creado durante la instalación del sistema operativo.

NGINX, CyberChef, etc.

BasicAuth

<WEB_USER>

Usuario definido al instalar T-Pot para acceso web.

Spiderfoot

BasicAuth

<WEB_USER>

Igual que el anterior.

T-Pot (interno)

OS

tpot

Usuario interno reservado para servicios de T-Pot.

T-Pot Logs

BasicAuth

<LS_WEB_USER>

Usuario gestionado automáticamente por el sistema.

Objetivos del proyecto

Simular un entorno empresarial vulnerable.

Desplegar y configurar T-Pot en una red local virtualizada.

Generar ataques controlados desde una máquina Kali Linux.

Analizar los datos capturados y visualizar los patrones de ataque.

Evaluar la utilidad de T-Pot como medida de detección en ciberseguridad.

Simulación de ataques

Se llevaron a cabo múltiples pruebas desde una máquina atacante:

Escaneos de puertos con Nmap.

Ataques de fuerza bruta SSH.

Intentos de explotación sobre servicios simulados por honeypots.

Recolección de logs y credenciales utilizadas por los atacantes.

Los datos fueron visualizados y analizados mediante Kibana y el resto de herramientas.

Resultados y análisis

(Se incluirá en detalle en el apartado de documentación del TFG. Resumen: se identificaron IPs externas, patrones de ataque comunes, credenciales utilizadas por bots, etc.)

Conclusiones

T-Pot ha demostrado ser una herramienta poderosa para la captura de ciberataques y el análisis de datos en un entorno simulado. Su facilidad de despliegue, la riqueza de información capturada y la integración visual de todos sus componentes lo convierten en una solución ideal tanto para formación como para evaluación de amenazas reales.

Nota: Este proyecto fue desarrollado por Pablo Abelaira como parte de su Trabajo de Fin de Grado del Ciclo Formativo de Grado Superior en Administración de Sistemas Informáticos en Red (ASIR), con especialización en ciberseguridad.

