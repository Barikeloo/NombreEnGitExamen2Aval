#!/bin/bash

# Leer el archivo y agrupar por ciudad
awk 'NR > 1 {a[$1][$2]=$4} END {
  for (city in a) {
    decreciente = 1
    last = 0
    for (mes in a[city]) {
      if (a[city][mes] >= last) {
        decreciente = 0
        break
      }
      last = a[city][mes]
    }
    if (decreciente) {
      print city
    }
  }
}' consumos.txt
