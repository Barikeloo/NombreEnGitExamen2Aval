#!/bin/bash
ciudad="$1"
media=$(./cmedia.sh "$ciudad")

if (( media < 400 )); then
    echo "ECO"
else
    echo "NO ECO"
fi
