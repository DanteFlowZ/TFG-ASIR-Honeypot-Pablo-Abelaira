# Análisis de ataques en el dashboard de T-Pot

T-Pot no solo actúa como un honeypot avanzado, sino que también proporciona herramientas potentes para visualizar y analizar los datos recogidos. Esta guía te muestra cómo interpretar los ataques mediante el entorno de visualización integrado en T-Pot.

---

## 🔍 ¿Dónde se visualizan los ataques?

Los datos recogidos por los honeypots se almacenan en **Elasticsearch** y se visualizan mediante varios paneles y herramientas web accesibles desde el navegador.

Accede desde:

https://<IP_TPOT>:64297

Con el usuario y contraseña definidos en la instalación (por defecto, autenticación BasicAuth).

---

## 🧰 Herramientas visuales incluidas

### 📊 Kibana

El corazón del análisis. Dashboards preconfigurados para cada honeypot.

- **Eventos por país**: Localización de IPs atacantes.
- **Servicios atacados**: Protocolos más dirigidos.
- **Credenciales robadas**: Vistas extraídas de honeypots como Cowrie o Heralding.
- **Timeline de actividad**: Intervalos con más ataques.

> Puedes crear tus propios dashboards o modificar los existentes.

---

### 🌍 T-Pot Attack Map

Mapa visual animado que representa ataques en tiempo real geolocalizados.

- Muestra IP de origen y tipo de ataque.
- Muy útil para presentaciones o defensas del TFG.
- Accesible desde: `https://<IP_TPOT>:64298`

---

### 🕵️‍♂️ Elasticvue

Frontend moderno para inspeccionar manualmente las bases de datos de Elasticsearch.

- Explora índices.
- Busca manualmente por IP, fecha, honeypot.
- Revisa documentos crudos sin filtros visuales.

---

### 🧪 CyberChef

Herramienta para análisis forense y decodificación.

- Extrae y transforma payloads recibidos.
- Muy útil para entender malware en Dionaea o Glutton.

---

## 📈 ¿Cómo se interpreta un ataque?

### Ejemplo: Ataque SSH

1. Honeypot: **Cowrie**
2. El atacante intenta entrar vía SSH.
3. Cowrie registra:
   - IP de origen
   - Usuario/contraseña
   - Comandos introducidos
   - Tiempos de conexión
4. Kibana muestra:
   - Intentos de login
   - País de la IP
   - Comandos más usados

### Ejemplo: Ataque HTTP

1. Honeypot: **Snare** + **Tanner**
2. El atacante accede a una URL maliciosa.
3. Tanner recoge payload y lo guarda.
4. CyberChef puede analizarlo.

---

## 🧠 Consejos para análisis

- Filtra por fechas concretas si hiciste pruebas específicas.
- Usa el buscador de Kibana para términos como `cowrie`, `honeypot`, `ssh`, `username`, etc.
- Crea visualizaciones personalizadas si un patrón se repite.

---

## 📌 Verificación

- [ ] Ataques visibles en Kibana.
- [ ] Datos bien organizados por país, IP, puerto.
- [ ] Visualizaciones exportadas en PNG o PDF para TFG.
- [ ] Logs revisados en Elasticvue.

