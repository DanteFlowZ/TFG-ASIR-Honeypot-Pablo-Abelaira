# Acceso a los servicios web de T-Pot

Una vez instalado T-Pot y configurada la red simulada, podrás acceder a su interfaz web desde un navegador para visualizar eventos, interactuar con los datos y usar herramientas de análisis.

---

## 🌐 ¿Cómo acceder?

### 📍 URL de acceso general:

https://<IP_DE_TPOT>:64297

Por ejemplo, si tu T-Pot tiene la IP `192.168.159.130`, accede desde Kali u otro dispositivo de la red:

https://192.168.159.130:64297


⚠️ **Importante**: Usa **https** y acepta el certificado no verificado (porque es autofirmado).

---

## 🔐 Autenticación

Durante la instalación de T-Pot se crean usuarios para los servicios protegidos con autenticación básica (**BasicAuth**).

- **Usuario web (`WEB_USER`)** → el que definiste durante la instalación.
- Se utiliza para todos los accesos web (Kibana, Spiderfoot, etc.).

Ejemplo de inicio de sesión:

- Usuario: `admin`
- Contraseña: `admin123`

⚠️ *Estos datos cambian según lo que hayas configurado durante la instalación.*

---

## 🧰 Servicios disponibles

A continuación, se describen los principales servicios web disponibles al acceder a la IP de T-Pot:

---

### 📊 **Kibana**

- **Función**: Visualización de eventos de seguridad.
- **Descripción**: Permite ver dashboards preconfigurados con información detallada sobre los ataques recibidos por los honeypots.
- **URL**: `https://<IP_DE_TPOT>/kibana`

---

### 🧠 **CyberChef**

- **Función**: Herramienta de análisis de datos.
- **Descripción**: Web app para codificar, decodificar, analizar, convertir y manipular datos en múltiples formatos.
- **URL**: `https://<IP_DE_TPOT>/chef`

---

### 🔍 **Elasticvue**

- **Función**: Explorador de clúster Elasticsearch.
- **Descripción**: Visualiza, busca y gestiona documentos almacenados en el clúster Elasticsearch de T-Pot.
- **URL**: `https://<IP_DE_TPOT>/elasticvue`

---

### 🌍 **GeoIP Attack Map**

- **Función**: Mapa animado de ataques recibidos.
- **Descripción**: Muestra en tiempo real un mapa mundial con los ataques y sus ubicaciones geográficas aproximadas.
- **URL**: `https://<IP_DE_TPOT>/map`

---

### 🕵️‍♂️ **Spiderfoot**

- **Función**: Herramienta OSINT automatizada.
- **Descripción**: Permite realizar escaneos OSINT (información pública) sobre dominios, IPs, usuarios, etc. Ideal para análisis de inteligencia cibernética.
- **URL**: `https://<IP_DE_TPOT>/spiderfoot`

---

## 🛡️ Protección con NGINX (reverse proxy)

Todos estos servicios están expuestos mediante NGINX como **reverse proxy**, lo que proporciona:

- Cifrado HTTPS.
- Autenticación básica.
- Acceso seguro centralizado.
- Control de tráfico entrante.

---

## 📁 Estructura típica de URL

| Servicio           | URL relativa       |
|--------------------|--------------------|
| Kibana             | `/kibana`          |
| CyberChef          | `/chef`            |
| Elasticvue         | `/elasticvue`      |
| Attack Map         | `/map`             |
| Spiderfoot         | `/spiderfoot`      |

Puedes acceder a todos ellos iniciando sesión con las mismas credenciales en cualquier navegador.

---

## ✅ Revisión final

- [ ] Red configurada correctamente.
- [ ] Acceso HTTPS permitido desde Kali u host.
- [ ] NGINX funcionando.
- [ ] Usuario web creado durante instalación.
- [ ] Servicios accesibles y funcionales.

