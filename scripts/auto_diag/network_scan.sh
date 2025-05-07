#!/bin/bash
echo "== ESCANER DE ESTADO DE RED =="

read -rp "indica la ip o rango de ips a escanear (ej; 192.168.100.20 o 192.168.100.0/24): " target

echo -e "\n📡 escaneando open ports con Nmap..."
# analiza la red en busca de puertos abiertos y otras vulnerabilidades básicas de red
nmap -sV --script vuln -T4 "$target"
# Este segundo script de nmap es más rápido pero menos detallado, para mayor eficiencia
# nmap -F --open -T4 "$target"

echo -e "\n🕷️ escaneando vulnerabilidades web con Nikto..."
read -rp "url del servidor web a analizar: " url
nikto -h "$url"

echo -e "\n🔍 auditando el sistema localmente con Lynis..."
sudo lynis audit system
