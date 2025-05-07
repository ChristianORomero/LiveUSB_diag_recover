#!/bin/bash
# Recopila información sobre RAM, discos, CPU y hardware en general

echo "====== DIAGNÓSTICO DE HARDWARE ======"

echo -e "\n Memoria RAM:"
free -h # uso de RAM y memoria SWAP

echo -e "\n Disco Duro (uso y estado):"
lsblk # lista discos duros y particiones disponibles
# verifica estado del disco duro en /dev/sda
smartctl -H /dev/sda 2>/dev/null || echo "SMART no disponible para /dev/sda"

echo -e "\n CPU:"
# info detallada sobre la arquitectura de la CPU
lscpu | grep -E 'Model name|Socket|Thread|Core|MHz'

echo -e "\n Información detallada del sistema:"
lshw -short | grep -v "volume" # info general resumida sobre hardware del equipo
