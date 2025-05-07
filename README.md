# 🛠️ LiveUSB Linux para soporte técnico y automatización de diagnóstico y recuperación de discos y archivos en equipos

**Autor:** [Cristian Ojeda]  
**Rol:** Técnico IT  
**Objetivo:** Crear una herramienta portable (Live Linux - Kali Lite USB) con scripts para automatizar el proceso de diagnóstico y recuperación de archivos y discos, contiene herramientas para el diagnóstico en sitio de sistemas Linux.


---

## Características del proyecto

- Live USB con herramientas preinstaladas
- Scripts automatizados para:
  - Diagnóstico de hardware
  - Recuperación de datos
  - Análisis de malware
  - Escáner básico de vulnerabilidades de red y servicios básicos
- Documentación paso a paso con capturas reales del proceso de creación de scripts, ejecución y comprobación

---

## Tecnologías

- Linux (Debian/Kali Lite)
- Bash scripting (Shell scripting)

## Herramientas CLI usadas en el proyecto "Estación de Diagnóstico USB"

Diagnóstico de Hardware

    lshw – Muestra información detallada del hardware.
    lscpu, lsblk, lspci, lsusb – Información sobre CPU, discos, periféricos y buses.
    inxi – Resumen completo del sistema en una sola línea.
    smartctl – Diagnóstico S.M.A.R.T. de discos duros y SSD.
    memtester / memtest86+ – Test de memoria RAM.
    dmidecode – Información del BIOS, placa base, etc.

Recuperación de Datos

    testdisk – Recuperación de particiones y reparación de tablas.
    photorec – Recuperación de archivos borrados.
    mount / umount – Montaje manual de particiones.
    dd – Clonado o creación de imágenes de discos (bajo riesgo si se usa con precaución).
    rsync – Copia segura de archivos recuperados.

Seguridad y Malware

    clamav (clamscan, freshclam) – Antivirus open-source para escaneo bajo demanda.
    chkrootkit – Detección de rootkits.
    rkhunter – Análisis de rootkits, puertas traseras y exploits locales.

Escaneo de vulnerabilidades

    nmap – Escaneo de puertos y detección de servicios.
    lynis – Auditoría de seguridad para sistemas Unix/Linux.

Utilidades

    bash – Shell scripting para automatizar tareas.
    cron / at – Programación de tareas (en sistemas más persistentes).
    journalctl – Análisis de logs del sistema (en live o persistente).
    top / htop – Monitorización de procesos en tiempo real.
