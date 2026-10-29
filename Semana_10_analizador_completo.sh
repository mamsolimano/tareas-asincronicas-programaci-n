echo -e "\e[1;35m--------------------------------------------------------\e[0m" > reporte_analisis.txt
echo -e "\e[1;45m          Análisis Integrado de una secuencia           \e[0m" >> reporte_analisis.txt
echo -e "\e[1;35m--------------------------------------------------------\e[m" >> reporte_analisis.txt

read -p "Ingresar el nombre del organismo: " organismo
read -p "Ingresar la fecha del análisis: " fecha
echo "" >> reporte_analisis.txt

echo -e "\e[35m========================================================\e[0m" >> reporte_analisis.txt
echo -e "\e[35m             Calculadora de secuencia\e[0m" >> reporte_analisis.txt
echo -e "\e[35m========================================================\e[0m" >> reporte_analisis.txt
echo "" >> reporte_analisis.txt
read -p "Ingresar la secuencia de ADN: " secuencia
echo -e "\e[33mLongitud de la secuencia    : ${#secuencia} nucleótidos\e[0m" >> reporte_analisis.txt
echo -e "Primer codón de la secuencia: ${secuencia:0:3}" >> reporte_analisis.txt
echo -e "Último codón al extremo 3': ${secuencia: -3}" >> reporte_analisis.txt
echo "" >> reporte_analisis.txt

echo -e "\e[35m========================================================\e[0m" >> reporte_analisis.txt
echo -e "\e[35m           Transcripción de la secuencia\e[0m" >> reporte_analisis.txt
echo -e "\e[35m========================================================\e[0m" >> reporte_analisis.txt
echo "" >> reporte_analisis.txt
echo -e "\e[36mADN     : 5'- $secuencia -3'\e[0m" >> reporte_analisis.txt
echo -e "\e[36mARN     : 5'- ${secuencia//T/U} -3'\e[0m" >> reporte_analisis.txt
echo -e "\e[33mLongitud: ${#secuencia} bases (misma cantidad)" >> reporte_analisis.txt
echo "" >> reporte_analisis.txt

echo -e "\e[35m========================================================\e[0m" >> reporte_analisis.txt
echo -e "\e[35m                 Lector de genes\e[0m" >> reporte_analisis.txt
echo -e "\e[35m========================================================\e[0m" >> reporte_analisis.txt
echo "" >> reporte_analisis.txt
read -p "Ingresar lista de genes: " genes
echo -e "\e[36mPrimer gen           : ${genes%%,*}\e[0m" >> reporte_analisis.txt
echo -e "\e[36mÚltimo gen           : ${genes##*,}\e[0m" >> reporte_analisis.txt
echo -e "\e[36mLista sin el 1er gen : ${genes#*,}\e[0m" >> reporte_analisis.txt
echo "" >> reporte_analisis.txt
