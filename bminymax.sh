#!/bin/bash

max=0
min=9999
while read -r ciudad mes año consumo; do
    if [ "$consumo" -gt "$max" ]; then
        max="$consumo"
        max_ciudad="$ciudad"
        max_mes="$mes"
        max_año="$año"
    fi
    if [ "$consumo" -lt "$min" ]; then
        min="$consumo"
        min_ciudad="$ciudad"
        min_mes="$mes"
        min_año="$año"
    fi
done < consumos.txt

echo "Ciudad con máximo consumo: $max_ciudad"
echo "Mes con máximo consumo: $max_mes"
echo "Año con máximo consumo: $max_año"
echo "Máximo consumo: $max"
echo "Ciudad con mínimo consumo: $min_ciudad"
echo "Mes con mínimo consumo: $min_mes"
echo "Año con mínimo consumo: $min_año"
echo "Mínimo consumo: $min"
