#!/bin/bash
# informe_sistema.sh

echo -e "\033[35m________________________________\033[0m"
echo -e "\033[1;35m      INFORME DEL SISTEMA       \033[0m"
echo -e "\033[35m--------------------------------\033[0m"
echo ""
echo "Usuario: $(whoami)"
echo "Fecha: $(date)"
echo "Directorio actual: $(pwd)"
echo ""
echo "Uso de disco del directorio actual"
du -sh
echo ""
echo "Contenido del directorio:"
ls -lh
