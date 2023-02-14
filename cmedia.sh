#!/bin/bash

# Comprobamos si se ha pasado un parámetro
if [ $# -eq 0 ]; then
    echo "Error: Debe proporcionar el nombre de una ciudad como argumento."
    exit 1
fi

ciudad=$1
suma=0
contador=0

# Leemos el archivo línea por línea y calculamos la suma de los consumos de la ciudad proporcionada
while read linea; do
    if [[ $linea == $ciudad* ]]; then
        suma=$(($suma + $(echo $linea | awk '{print $4}'))
        contador=$(($contador + 1))
    fi
done < consumos.txt

# Calculamos la media y la mostramos
media=$(echo "scale=2; $suma / $contador" | bc)
echo "La media de consumo en $ciudad es: $media"
