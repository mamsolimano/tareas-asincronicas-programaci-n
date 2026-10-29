#!/bin/bash
# procesador_fasta.sh


# crear archivo FASTA
FASTA=operacion_KPC/datos_crudos/aislados_uci.fasta
cat > "$FASTA" << 'EOF'
>KP_UCI_001|Klebsiella_pneumoniae|paciente_01
ATTCGCGTTAACGATATCCCGAGATTATGCACATGTACGATCGATCGATGGTCA
>KP_UCI_002|Klebsiella_pneumoniae|paciente_02
GATCGATCGGGATCCCTGATGGACTGTACGTAGCTAGCTAGTCGATCGATCGATATGC
>KP_UCI_003|Klebsiella_pneumoniae|paciente_03
TAGCTAGCTAGCTAGCTACGACTGCTACGTGAAAGAGCTTGGGACTAGCAT
EOF

echo -e "\033[1;35mSecuencias interceptadas:\033[0m $(grep -c ">" "$FASTA")"
echo ""
echo -e "\033[1;35mIdentificadores:\033[0m"
grep ">" "$FASTA"

# Calcular la longitud aproximada de las secuencias
echo ""
echo -e "\033[1;35mLongitud aproximada:\033[0m"
Longitud_1=$(grep -A1 "KP_UCI_001" "$FASTA" | tail -1 | wc -c)
Longitud_2=$(grep -A1 "KP_UCI_002" "$FASTA" | tail -1 | wc -c)
Longitud_3=$(grep -A1 "KP_UCI_003" "$FASTA" | tail -1 | wc -c)

echo "KP_UCI_001 : "$Longitud_1" caracteres"
echo "KP_UCI_002 : "$Longitud_2" caracteres"
echo "KP_UCI_003 : "$Longitud_3" caracteres"

echo -e "\033[1;31mEste mensaje se autodestruirá en...\033[0m"
echo "3"; sleep 1
echo "2"; sleep 1
echo "1"; sleep 1
clear
