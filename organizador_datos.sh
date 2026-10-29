#!/bin/bash
# organizador_datos.sh

# Crear la estructura de directorios para organizar los archivos necesario para el análisis de Klebsiella pneumoniae
PROYECTO="operacion_KPC"

echo -e "\033[1;33mMontando base de operaciones: $PROYECTO ...\033[0m"

mkdir -p operacion_KPC/{datos_crudos,datos_procesados,resultados,scripts,logs,referencias}

# Crear archivos en 2 subdirectorios
touch "$PROYECTO/datos_crudos/LEEME.txt"
touch "$PROYECTO/logs/registro.log"

find $PROYECTO | sort

echo ""
echo -e "\033[1;33mBase de operaciones lista. Esperando secuencias...\033[0m"
