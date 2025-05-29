#!/bin/bash

# Define limite de uso (em %)
LIMITE=80

# Captura uso da partição raiz "/"
USO_DISCO=$(df / | awk 'NR==2 {gsub(/%/, "", $5); print $5}')

echo "Uso atual do disco: $USO_DISCO%"

# Verifica se passou do limite
if [ "$USO_DISCO" -ge "$LIMITE" ]; then
    echo "ALERTA: uso do disco acima de ${LIMITE}%!"
else
    echo "Disco dentro do limite aceitável."
fi