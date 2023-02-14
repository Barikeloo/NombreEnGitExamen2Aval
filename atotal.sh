#!/bin/bash
while true; do
  echo "Introduzca la ciudad (Valencia, Barcelona o Madrid) en minusculas porfavor :) = "
  read ciudad
  consumo_total=0
  while IFS=' ' read -r ciudad_actual mes_actual anyo_actual consumo_actual; do
    if [[ $ciudad_actual == $ciudad ]]; then
      consumo_total=$((consumo_total + consumo_actual))
    fi
  done < consumos.txt

  if [[ $consumo_total -eq 0 ]]; then
    echo "La ciudad introducida no es válida, inténtelo de nuevo."
  else
    echo "El consumo total de $ciudad en 2022 fue de $consumo_total."
    break
  fi
done
