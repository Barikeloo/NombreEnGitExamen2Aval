#!/bin/bash

# Obtener la media de consumos para cada ciudad
valencia=$(./cmedia.sh Valencia)
barcelona=$(./cmedia.sh Barcelona)
madrid=$(./cmedia.sh Madrid)

# Buscar la ciudad con la media más baja
if (( $(echo "$valencia <= $barcelona" | bc -l) && $(echo "$valencia <= $madrid" | bc -l) )); then
    echo "Valencia"
elif (( $(echo "$barcelona <= $valencia" | bc -l) && $(echo "$barcelona <= $madrid" | bc -l) )); then
    echo "Barcelona"
else
    echo "Madrid"
fi
