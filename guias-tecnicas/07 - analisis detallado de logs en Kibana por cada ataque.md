7.1 Introducción

El presente apartado constituye una ampliación técnica centrada en el análisis exhaustivo de los registros generados por los ataques simulados hacia el entorno de honeypot proporcionado por T-Pot. Utilizando el dashboard de Kibana, se examinan en profundidad los eventos registrados, las IPs de origen, los protocolos afectados, y las credenciales capturadas. El propósito es demostrar cómo una organización puede utilizar herramientas de visualización para detectar, identificar y responder ante comportamientos maliciosos dentro de su red.

Este análisis no solo permite evaluar la eficacia de la infraestructura de detección, sino también documentar con precisión los vectores de ataque, las tácticas empleadas por los atacantes, y cómo un sistema de registro y monitoreo bien configurado puede aportar visibilidad y trazabilidad a los incidentes.

7.2 Objetivos

Documentar el uso detallado del dashboard de Kibana para el análisis forense de incidentes.

Estudiar la relación entre tipos de ataques y las huellas que dejan en los registros.

Detectar patrones comunes en los ataques simulados.

Evaluar la utilidad del honeypot para recopilar inteligencia de amenazas.

7.3 Metodología de análisis

Para lograr una visión clara de cada incidente, se aplicó una metodología basada en las siguientes fases:

Acceso al entorno gráfico de Kibana: A través del navegador, se accedió al dashboard integrado que ofrece T-Pot, utilizando la IP pública asignada por VMware y los puertos habilitados por las reglas de red.

Selección del índice correspondiente: En Kibana, se seleccionaron los índices del tipo logstash-* y honeypot-*, que agrupan los datos de distintos honeypots activos como Cowrie, Dionaea, entre otros.

Ajuste temporal preciso: Para analizar con precisión cada ataque, se configuraron filtros temporales exactos desde la interfaz de Kibana, alineados con la hora de ejecución de los ataques simulados.

Exploración de visualizaciones: Se utilizaron dashboards preconfigurados y personalizados para observar los siguientes elementos:

Frecuencia de eventos

Actividad por protocolo

Origen geográfico de las IPs

Captura de credenciales

Cronología de eventos

Extracción de información técnica: Se documentaron logs específicos, identificadores de sesiones, y comandos ejecutados cuando fueron registrados por honeypots de tipo Cowrie.

Captura de evidencias: Se tomaron capturas de pantalla para ilustrar las fases del ataque y las respuestas generadas por el sistema.

7.4 Visualizaciones utilizadas

A continuación se presentan las visualizaciones clave empleadas durante el análisis, disponibles en el dashboard principal de T-Pot:

Visualización

Descripción

SSH Login Attempts

Muestra intentos de autenticación SSH incluyendo usuario, contraseña e IP.

Port Scan Activity

Registra escaneos de puertos, indicando número de paquetes, puertos destino y frecuencia.

HTTP Request Logs

Peticiones HTTP a servidores emulados, con método, URL, cabeceras y códigos de respuesta.

Captured Credentials

Base de datos de credenciales capturadas en intentos fallidos de acceso.

Event Timeline

Línea de tiempo interactiva que permite correlacionar múltiples eventos.

GeoIP Map

Mapa geográfico de los orígenes de los ataques en tiempo real.

7.5 Análisis por tipo de ataque

7.5.1 Escaneo de puertos

Herramienta utilizada: nmap -sS -p 1-65535 192.168.159.130

Propósito: Descubrir puertos abiertos y posibles servicios vulnerables.

Comportamiento observado: En la visualización Port Scan Activity, se detectó un pico de tráfico simultáneo hacia múltiples puertos. Se identificaron más de 1000 paquetes TCP SYN dirigidos a puertos comunes como 22 (SSH), 80 (HTTP), 443 (HTTPS), 21 (FTP), y 3306 (MySQL).

IP origen: 192.168.159.131

Correlación: El escaneo activó respuestas en varios honeypots simultáneamente (Cowrie, Glastopf y Dionaea), lo que demuestra la efectividad del entorno para registrar actividad multivectorial.

Captura: img/07_portscan.png

7.5.2 Ataques de fuerza bruta por SSH

Herramienta utilizada: hydra -l root -P passwords.txt ssh://192.168.159.130

Propósito: Acceder mediante combinaciones de usuario y contraseña comunes.

Comportamiento observado: En SSH Login Attempts, se registraron más de 250 intentos desde una única IP en un intervalo de 2 minutos. Los logs de Cowrie registraron comandos emitidos tras accesos exitosos simulados.

Credenciales capturadas: Se obtuvieron pares como admin:123456, root:toor y user:qwerty.

Impacto: A pesar de que Cowrie simula un entorno operativo real, todos los comandos fueron registrados y la sesión fue interceptada, evidenciando el valor del honeypot como sistema de alerta temprana.

Captura: img/07_ssh_attempts.png

7.5.3 Acceso a servicios HTTP vulnerables

Herramienta utilizada: Navegación manual y herramientas como dirb, nikto.

URLs objetivo: /admin, /login, /test, /phpmyadmin, /wp-login.php

Códigos de respuesta: HTTP 200 (OK), 301 (Redirección), 403 (Prohibido), 404 (No encontrado).

Observaciones: La visualización HTTP Request Logs mostró actividad irregular, incluyendo agentes de usuario automatizados, cabeceras manipuladas y peticiones sospechosas.

Honeypot involucrado: Glastopf y Conpot.

Captura: img/07_http_requests.png

7.6 Interpretación de resultados

El análisis realizado demuestra que:

La recopilación de datos en tiempo real es viable y fiable usando T-Pot.

Las visualizaciones ofrecidas por Kibana permiten identificar rápidamente ataques y clasificarlos por severidad.

Se logró detectar la mayoría de los vectores comunes usados por atacantes reales: escaneo masivo, fuerza bruta y acceso HTTP no autorizado.

El uso de honeypots con diferentes perfiles (SSH, HTTP, SCADA, etc.) permite una visión holística de las amenazas.

Las capturas de credenciales suponen una fuente valiosa de inteligencia, sobre todo para comprender cómo se comportan los scripts automatizados.

7.7 Conclusiones parciales

A modo de cierre de este análisis, se puede concluir que:

El uso de dashboards como el de Kibana facilita la visualización, segmentación y análisis de eventos de seguridad de forma clara y estructurada.

T-Pot no solo actúa como señuelo, sino como una plataforma completa de análisis de amenazas, capturando no solo la actividad, sino también el contexto y el contenido de los ataques.

Este tipo de herramienta es perfectamente viable en entornos reales donde no se cuente con sistemas de detección más complejos, permitiendo a las organizaciones adelantarse a los atacantes.