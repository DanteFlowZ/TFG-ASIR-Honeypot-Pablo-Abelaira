08 - Evaluación de la utilidad del honeypot en un entorno empresarial simulado

8.1 Introducción

Este apartado se centra en valorar el impacto y la utilidad de implementar un sistema honeypot como T-Pot en una empresa simulada. Se evaluarán sus beneficios en cuanto a detección de amenazas, análisis forense, y mejora de la postura defensiva, así como las limitaciones y consideraciones prácticas de su despliegue.

8.2 Contexto de simulación empresarial

Para esta evaluación, se ha simulado una pequeña empresa con un entorno de red compuesto por:

Un servidor honeypot (T-Pot) instalado en VMware.

Una máquina atacante (Kali Linux).

Reglas de firewall configuradas para permitir tráfico externo hacia el honeypot.

Escenarios de ataque realistas ejecutados durante varios días.

La simulación permitió observar cómo se comportaría un honeypot ante intentos de intrusión y qué tipo de datos de inteligencia se podrían recopilar.

8.3 Beneficios observados

8.3.1 Detección temprana de amenazas

El honeypot detectó accesos sospechosos, escaneos de red y ataques dirigidos, proporcionando alertas tempranas sobre actividades maliciosas.

8.3.2 Recolección de inteligencia

Se recogieron credenciales, patrones de ataque y direcciones IP de los atacantes. Esta información es útil para alimentar sistemas de correlación de eventos y mejorar las reglas de detección.

8.3.3 Bajo riesgo para la red real

El honeypot, al estar aislado, actúa como señuelo sin afectar los servicios reales de la empresa. Esto permite investigar sin comprometer la seguridad real del entorno de producción.

8.3.4 Visibilidad en el comportamiento de los atacantes

Gracias a las herramientas de visualización como Kibana, fue posible analizar en detalle los pasos seguidos por los atacantes, sus técnicas y las vulnerabilidades más explotadas.

8.4 Limitaciones encontradas

Mantenimiento técnico: T-Pot requiere conocimientos intermedios para su instalación, configuración y actualización.

Falsos positivos: Algunos eventos legítimos pueden interpretarse como amenazas si no se afinan bien los filtros.

Capacidad de escalado: Para entornos más grandes, se necesitaría más infraestructura y personal capacitado.

8.5 Valoración final

En un entorno empresarial simulado, el uso de un honeypot como T-Pot ha demostrado ser una herramienta eficaz de detección y análisis, complementando los sistemas de defensa tradicionales. Aporta una capa adicional de seguridad al permitir el estudio del comportamiento real de los atacantes y la generación de alertas sin interferir en la infraestructura crítica.

Su integración es especialmente valiosa en pequeñas y medianas empresas que buscan soluciones proactivas con costes moderados y alto valor informativo.

