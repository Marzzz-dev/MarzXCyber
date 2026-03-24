#!/bin/bash
# ============================================
# Marz Custom Terminal & Some Tools
# Created by: @Whois_Marzz
# ============================================

# Color scheme
R='\033[0;31m'
G='\033[0;32m'
Y='\033[1;33m'
B='\033[0;34m'
P='\033[0;35m'
C='\033[0;36m'
W='\033[1;37m'
N='\033[0m'

# Password authorize
AUTH_PASS="marzx123"

# Function untuk authorization
authorize() {
    clear
    echo -e "${R}"
    echo "╔═══════════════════════════════════════════════════════════╗"
    echo "║  ███╗   ███╗ █████╗ ██████╗ ███████╗██╗  ██╗            ║"
    echo "║  ████╗ ████║██╔══██╗██╔══██╗╚══███╔╝╚██╗██╔╝            ║"
    echo "║  ██╔████╔██║███████║██████╔╝  ███╔╝  ╚███╔╝             ║"
    echo "║  ██║╚██╔╝██║██╔══██║██╔══██╗ ███╔╝   ██╔██╗             ║"
    echo "║  ██║ ╚═╝ ██║██║  ██║██║  ██║███████╗██╔╝ ██╗            ║"
    echo "║  ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝            ║"
    echo "║                                                           ║"
    echo "║                    ██████╗██╗   ██╗██████╗ ███████╗██████╗║"
    echo "║                   ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗║"
    echo "║                   ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝║"
    echo "║                   ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗║"
    echo "║                   ╚██████╗   ██║   ██████╔╝███████╗██║  ██║║"
    echo "║                    ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝║"
    echo "║                                                           ║"
    echo "║                    ACCESS RESTRICTED                      ║"
    echo "╚═══════════════════════════════════════════════════════════╝"
    echo -e "${N}"
    
    echo -e "${Y}┌─────────────────────────────────────────────────────────┐${N}"
    echo -e "${Y}│${W}  This terminal is protected. Enter password to continue.  ${Y}│${N}"
    echo -e "${Y}└─────────────────────────────────────────────────────────┘${N}"
    echo ""
    
    read -sp "┌─[${G}MARZX${N}]──[${R}PASSWORD${N}]\n└─$ " pass
    echo ""
    
    if [ "$pass" != "$AUTH_PASS" ]; then
        echo -e "\n${R}[!] ACCESS DENIED! Invalid password.${N}"
        sleep 2
        exit 1
    fi
    
    echo -e "\n${G}[✓] ACCESS GRANTED! Welcome, MarzX.${N}"
    sleep 1
    
    # Animasi loading
    echo -ne "\n${Y}Loading system"
    for i in {1..3}; do
        sleep 0.5
        echo -n "."
    done
    echo -e "${N}"
    sleep 1
    
    clear
    echo -e "${G}"
    echo "╔═══════════════════════════════════════════════════════════╗"
    echo "║           ███╗   ███╗ █████╗ ██████╗ ███████╗██╗  ██╗    ║"
    echo "║           ████╗ ████║██╔══██╗██╔══██╗╚══███╔╝╚██╗██╔╝    ║"
    echo "║           ██╔████╔██║███████║██████╔╝  ███╔╝  ╚███╔╝     ║"
    echo "║           ██║╚██╔╝██║██╔══██║██╔══██╗ ███╔╝   ██╔██╗     ║"
    echo "║           ██║ ╚═╝ ██║██║  ██║██║  ██║███████╗██╔╝ ██╗    ║"
    echo "║           ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝    ║"
    echo "║                                                           ║"
    echo "║              ██████╗██╗   ██╗██████╗ ███████╗██████╗     ║"
    echo "║             ██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗    ║"
    echo "║             ██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝    ║"
    echo "║             ██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗    ║"
    echo "║             ╚██████╗   ██║   ██████╔╝███████╗██║  ██║    ║"
    echo "║              ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝    ║"
    echo "║                                                           ║"
    echo "║                 AUTHORIZED ACCESS GRANTED                 ║"
    echo "║                      WELCOME MARZX                        ║"
    echo "╚═══════════════════════════════════════════════════════════╝"
    echo -e "${N}"
    sleep 2
}

# System Info
sys_info() {
    clear
    echo -e "${C}╔═══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║                      📊 SYSTEM INFO                       ║${N}"
    echo -e "${C}╚═══════════════════════════════════════════════════════════╝${N}"
    echo ""
    
    OS=$(uname -o)
    KERNEL=$(uname -r)
    HOST=$(uname -n)
    USER=$(whoami)
    UPTIME=$(uptime -p | sed 's/up //')
    IP=$(curl -s ifconfig.me 2>/dev/null || echo "Not connected")
    RAM=$(free -h | awk '/^Mem:/ {print $3 "/" $2}')
    STORAGE=$(df -h /data 2>/dev/null | awk 'NR==2 {print $3 "/" $2}' || df -h / | awk 'NR==2 {print $3 "/" $2}')
    
    echo -e "${Y}┌─────────────────────────────────────────────────────────┐${N}"
    echo -e "${Y}│${W} OS      : ${G}$OS${N}"
    echo -e "${Y}│${W} Kernel  : ${G}$KERNEL${N}"
    echo -e "${Y}│${W} Host    : ${G}$HOST${N}"
    echo -e "${Y}│${W} User    : ${G}$USER${N}"
    echo -e "${Y}│${W} Uptime  : ${G}$UPTIME${N}"
    echo -e "${Y}│${W} IP      : ${G}$IP${N}"
    echo -e "${Y}│${W} RAM     : ${G}$RAM${N}"
    echo -e "${Y}│${W} Storage : ${G}$STORAGE${N}"
    echo -e "${Y}└─────────────────────────────────────────────────────────┘${N}"
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Press Enter${N}]\n└─$ "
}

# Network Scan
net_scan() {
    clear
    echo -e "${C}╔═══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║                      📡 NETWORK SCAN                      ║${N}"
    echo -e "${C}╚═══════════════════════════════════════════════════════════╝${N}"
    echo ""
    
    LOCAL_IP=$(ip route get 1 2>/dev/null | awk '{print $NF;exit}' || echo "192.168.1.1")
    SUBNET=$(echo $LOCAL_IP | cut -d. -f1-3)
    
    echo -e "${Y}[+] Local IP: ${G}$LOCAL_IP${N}"
    echo -e "${Y}[+] Subnet: ${G}$SUBNET.0/24${N}"
    echo -e "${Y}[+] Scanning...${N}"
    echo ""
    
    for i in {1..254}; do
        ip="$SUBNET.$i"
        ping -c 1 -W 1 $ip > /dev/null 2>&1 && echo -e "${G}[✓]${N} $ip ${G}ACTIVE${N}" &
    done
    wait
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Press Enter${N}]\n└─$ "
}

# Port Scanner
port_scan() {
    clear
    echo -e "${C}╔═══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║                      🚪 PORT SCANNER                      ║${N}"
    echo -e "${C}╚═══════════════════════════════════════════════════════════╝${N}"
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Target IP/Domain${N}]\n└─$ " target
    
    if [ -z "$target" ]; then
        echo -e "${R}[!] No target specified${N}"
        read -p "Press Enter..."
        return
    fi
    
    echo -e "${Y}[+] Scanning $target...${N}"
    echo ""
    
    for port in 21 22 23 25 53 80 443 8080 3306 3389; do
        timeout 1 bash -c "echo >/dev/tcp/$target/$port" 2>/dev/null && echo -e "${G}[OPEN]${N} Port $port" || echo -e "${R}[CLOSED]${N} Port $port"
    done
    
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Press Enter${N}]\n└─$ "
}

# Hash Tools
hash_tools() {
    clear
    echo -e "${C}╔═══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║                      🔐 HASH TOOLS                        ║${N}"
    echo -e "${C}╚═══════════════════════════════════════════════════════════╝${N}"
    echo ""
    echo -e "${Y}[1]${W} MD5"
    echo -e "${Y}[2]${W} SHA1"
    echo -e "${Y}[3]${W} SHA256"
    echo -e "${Y}[4]${W} Base64 Encode"
    echo -e "${Y}[5]${W} Base64 Decode"
    echo -e "${Y}[6]${W} Back"
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Pilih${N}]\n└─$ " hc
    
    case $hc in
        1) read -p "Text: " t; echo -e "${G}MD5:${N} $(echo -n $t | md5sum | cut -d' ' -f1)"; read -p "Press Enter..." ;;
        2) read -p "Text: " t; echo -e "${G}SHA1:${N} $(echo -n $t | sha1sum | cut -d' ' -f1)"; read -p "Press Enter..." ;;
        3) read -p "Text: " t; echo -e "${G}SHA256:${N} $(echo -n $t | sha256sum | cut -d' ' -f1)"; read -p "Press Enter..." ;;
        4) read -p "Text: " t; echo -e "${G}Base64:${N} $(echo -n $t | base64)"; read -p "Press Enter..." ;;
        5) read -p "Base64: " t; echo -e "${G}Text:${N} $(echo -n $t | base64 -d)"; read -p "Press Enter..." ;;
        6) return ;;
    esac
}

# Password Generator
pass_gen() {
    clear
    echo -e "${C}╔═══════════════════════════════════════════════════════════╗${N}"
    echo -e "${C}║                      🔑 PASSWORD GEN                      ║${N}"
    echo -e "${C}╚═══════════════════════════════════════════════════════════╝${N}"
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Length${N} (default 16)]\n└─$ " len
    len=${len:-16}
    
    pass=$(cat /dev/urandom | tr -dc 'A-Za-z0-9!@#$%^&*' | head -c $len)
    
    echo ""
    echo -e "${G}┌─────────────────────────────────────────────────────────┐${N}"
    echo -e "${G}│${W}  $pass${N}"
    echo -e "${G}└─────────────────────────────────────────────────────────┘${N}"
    echo ""
    read -p "┌─[${G}MARZX${N}]──[${C}Press Enter${N}]\n└─$ "
}

# Matrix Effect
matrix_effect() {
    clear
    echo -e "${G}"
    tput civis
    for i in {1..100}; do
        line=""
        for j in {1..50}; do
            line+=$(echo -n $((RANDOM % 2)))
        done
        echo "$line"
        sleep 0.05
    done
    tput cnorm
    echo -e "${N}"
    read -p "Press Enter..."
}

# Glitch Effect
glitch() {
    clear
    echo -e "${R}"
    for i in {1..50}; do
        echo -ne "\r$(cat /dev/urandom | tr -dc '!@#$%^&*()_+{}|:<>?~' | head -c 80)"
        sleep 0.03
    done
    echo -e "${N}"
    read -p "Press Enter..."
}

# ASCII Art
ascii_art() {
    clear
    echo -e "${R}"
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀⣀"
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⠀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo "    ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿"
    echo -e "${N}"
    read -p "Press Enter..."
}

# Main Menu
main_menu() {
    clear
    echo -e "${G}╔═══════════════════════════════════════════════════════════╗${N}"
    echo -e "${G}║                    🔥 MARZX CYBER v1.0                    ║${N}"
    echo -e "${G}╚═══════════════════════════════════════════════════════════╝${N}"
    echo ""
    echo -e "${Y}[1]${W}  System Info        ${Y}[5]${W}  Password Gen      ${Y}[9]${W}  Glitch${N}"
    echo -e "${Y}[2]${W}  Network Scan       ${Y}[6]${W}  Matrix Rain        ${Y}[10]${W} ASCII Art${N}"
    echo -e "${Y}[3]${W}  Port Scanner       ${Y}[7]${W}  Clear Screen       ${Y}[0]${W}  Exit${N}"
    echo -e "${Y}[4]${W}  Hash Tools"
    echo ""
    echo -ne "${G}┌─[${W}MARZX@CYBER${G}]──[${Y}~${G}]\n└─$ ${W}"
    read choice
    
    case $choice in
        1) sys_info ;;
        2) net_scan ;;
        3) port_scan ;;
        4) hash_tools ;;
        5) pass_gen ;;
        6) matrix_effect ;;
        7) clear ;;
        8) glitch ;;
        9) glitch ;;
        10) ascii_art ;;
        0) echo -e "${G}Goodbye!${N}"; exit 0 ;;
        *) echo -e "${R}[!] Invalid option${N}"; sleep 1 ;;
    esac
}

# Run
authorize
while true; do
    main_menu
done
