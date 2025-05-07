#!/bin/bash
# Este script presenta un menú al técnico IT para ejecutar TestDisk o PhotoRec, ambas relacionadas para recuperación de datos, el script elegido será ejecutado con permisos de admin

echo "====== HERRAMIENTA DE RECUPERACIÓN DE DATOS ======"
echo "Seleccione una herramientas, PhotoRec (recupera archivos perdidos como fotos o docs) o TestDisk (recupera particiones perdidas y hace que los discos vuelvan a arrancar):"
echo "1) Ejecutar TestDisk"
echo "2) Ejecutar PhotoRec"
read -rp "Opción [1-2]: " opt

case $opt in
  1)
    sudo testdisk
    ;;
  2)
    sudo photorec
    ;;
  *)
    echo "Opción inválida"
    ;;
esac
